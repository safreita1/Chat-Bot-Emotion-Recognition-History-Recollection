#! /usr/bin/env python

from gtts import gTTS
import os
import rospy
from user_interface import UserInterface
from r_chatbot.srv import *

from speech_to_text import SpeechRecognition
import pyglet
# This line must be before the tensorflow initialization or the program crashes
print "setting up window"
window = pyglet.window.Window(fullscreen=True)
print "done setting up window"

input_sentence = ""
current_emotion = ""
devid = 0
top_words = []

def face_recognize_client(user_interface, device_id):
    rospy.wait_for_service('facereq')
    try:
        service = rospy.ServiceProxy('facereq', FaceRecognize)
        resp = service(device_id)
        user_interface.stream_webcam("Testing for user recognition", None)
        user_interface.render()
        return resp.id, resp.name
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None, None

def face_retrain_client(user_interface, name, device_id):
    rospy.wait_for_service('facetrain')
    try:
        service = rospy.ServiceProxy('facetrain', FaceTrain )
        resp = service(name, device_id)
        user_interface.stream_webcam("Re-training on user images", None)
        user_interface.render()
        return resp.id
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None

def context_client(input_sentence):
    rospy.wait_for_service('context')
    try:
        service = rospy.ServiceProxy('context', Context)
        resp = service(input_sentence)
        return resp.response, resp.correlation
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None, None

def emotion_client(user_interface, device_id):
    rospy.wait_for_service('emotionreq')
    try:
        service = rospy.ServiceProxy('emotionreq', EmotionRecognize )
        resp = service(device_id)
        user_interface.stream_webcam("Current User Emotion", resp.emotion)
        user_interface.render()
        return resp.emotion
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None
def get_topic_client(input_sentence):
    rospy.wait_for_service('get_top_topics')
    try:
        service = rospy.ServiceProxy('get_top_topics', GetTopics )
        resp = service(input_sentence)
        print top_topics
        return resp.top_topics
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None

def write_history_client(username):
    rospy.wait_for_service('write_history')
    try:
        service = rospy.ServiceProxy('write_history', WriteHistory )
        resp = service(username)
        return resp.retval
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None

def load_history_client(username):
    rospy.wait_for_service('load_history')
    try:
        service = rospy.ServiceProxy('load_history', LoadHistory )
        resp = service(username)
        return resp.retval
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None

def text_to_speech(text):
    if text:
        tts = gTTS(text=text, lang='en')
        tts.save("speech.mp3")
        os.system("mpg321 speech.mp3")


# This function determines whether or not the chatbot has talked with the user
def history_recollection(user_interface):
    uid, user_name = face_recognize_client(user_interface, devid)
    if uid == -1:
        chatbot_response = "I don't think we've met before, what's your name?"
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", "Unknown")), "Primary Topics: ")
        user_interface.render()
        text_to_speech(chatbot_response)
        user_name = speech.recognize_speech()
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", user_name)), "Primary Topics: ")
        user_interface.render()
        ret = face_retrain_client(user_interface, user_name, devid)

    else:
        chatbot_response = "It's good to see you again, " + user_name
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", user_name)), "Primary Topics: ")
        user_interface.render()
        text_to_speech(chatbot_response)
    return user_name


#Enter a Mircosoft Speech token into the SpeechRecognition constructor
speech = SpeechRecognition("1a413224eeff42539b348bff8c1925c9")
print "speech done"

user_interface = UserInterface(window)
print "ui done"

# The chatbot will start listening to the user after they say "computer"
# The bot will then read your emotion via webcam

while input_sentence != "computer":
    user_interface.update_sprites("Listening...", "Emotion: None", "User: Unknown", "Primary Topics: ")
    user_interface.render()
    print "waiting on input"
    input_sentence = "computer"#speech.recognize_speech()
    print "You said: ", input_sentence

    meeting_emotion = emotion_client(user_interface, devid)
    assert(meeting_emotion != None)

    print "Emotion read: ", meeting_emotion

# Make a call to see whether or not the user is recognized
user_name = history_recollection(user_interface)




load_history_client(user_name)

# Based on the emotion read from the webcam, the chatbot will respond differently
if meeting_emotion is "Happy" or meeting_emotion is "Surprise":
    chatbot_response = "You seem like you're in a good mood today. How can I help you?"

elif meeting_emotion is "Neutral":
    chatbot_response = "How may I help you today?"

else:
    chatbot_response = "I sense that you may be bothered right now. How can I help?"

user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", user_name)), "Primary Topics: ")
user_interface.render()
text_to_speech(chatbot_response)
user_interface.remove_webcam_label()

# Continously chat with the user until they say "goodbye computer"
chatbot_response = ""
input_sentence = speech.recognize_speech()
while input_sentence != "goodbye computer":

   
    if input_sentence != "":
        print "Original input sentence: ", input_sentence
        top_words = get_topic_client(input_sentence)

        print input_sentence

        response, correlation = context_client(input_sentence)
        assert(correlation != None)
        assert(response != None)

        if correlation > 0:
            chatbot_response = response

        elif correlation == 0:
            chatbot_response = "I'm sorry, but I couldn't find an appropriate response to your query."

    if len(top_words) > 0:
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", "N/A")), " ".join(("User: ", user_name)), " ".join(("Primary Topics: ", top_words[0], ", ", top_words[1])))
    else:
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", "N/A")), " ".join(("User: ", user_name)), "Primary Topics: ")
    user_interface.render()
    text_to_speech(chatbot_response)

    chatbot_response = ""
    top_words = []
    input_sentence = speech.recognize_speech()



leaving_emotion = emotion_client()
assert(leaving_emotion != None)
print "Leaving emotion: ", leaving_emotion

# If the user came in happy and left sad, apologize to them
if (meeting_emotion is "Happy" or meeting_emotion is "Surprise") and (leaving_emotion is "Angry" or leaving_emotion is
    "Sad" or leaving_emotion is "Disgust" or leaving_emotion is "Fear"):

    chatbot_response = "I apologize, it seems that I left you in a worse mood than before we talked."

# Else if the user came in angry and left happy, respond happy
elif (meeting_emotion is "Angry" or meeting_emotion is "Sad" or meeting_emotion is "Disgust" or meeting_emotion is "Fear") and (leaving_emotion is "Happy" or leaving_emotion is "Surprise"):
    chatbot_response = "I'm happy, it seems that you're in a better mood than before our talk."

# Otherwise, respond with a standard goodbye
else:
    if user_name is None:
        chatbot_response = "Goodbye. It was nice meeting you."
    else:
        chatbot_response = "Bye, " + user_name + ". It was nice talking to you."


if len(top_words) > 0:
    user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", leaving_emotion)), " ".join(("User: ", user_name)), " ".join(("Primary Topics: ", top_words[0], ", ", top_words[1])))
else:
    user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", leaving_emotion)), " ".join(("User: ", user_name)), "Primary Topics: ")
user_interface.render()
text_to_speech(chatbot_response)


write_history_client(user_name)