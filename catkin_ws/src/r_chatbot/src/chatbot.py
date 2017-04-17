#! /usr/bin/env python

from gtts import gTTS
import os
from threading import Thread

import rospy
from r_chatbot.srv import *
#from emotion_recognition import EmotionRecognition
#from context_recognition import ContextRecognition
from speech_to_text import SpeechRecognition


import pyglet
# This line must be before the tensorflow initialization or the program crashes
window = pyglet.window.Window(fullscreen=True)

from emotion_recognition import EmotionRecognition
from context_recognition import ContextRecognition
from speech_to_text import SpeechRecognition
from FaceRecognizer import FaceRecognizer
from user_interface import UserInterface


input_sentence = ""
current_emotion = ""
devid = 0
def face_recognize_client():
    rospy.wait_for_service('facereq')
    try:
        service = rospy.ServiceProxy('facereq', FaceRecognize)
        resp = service(devid)
        return resp.id, resp.name
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None, None

def face_retrain_client(name):
    rospy.wait_for_service('facetrain')
    try:
        service = rospy.ServiceProxy('facetrain', FaceTrain )
        resp = service(name)
        return resp.id
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None

def context_client(input):
    rospy.wait_for_service('context')
    try:
        service = rospy.ServiceProxy('context', Context)
        resp = service(input)
        return resp.response, resp.correlation
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None, None

def emotion_client():
    rospy.wait_for_service('emotionreq')
    try:
        service = rospy.ServiceProxy('emotionreq', EmotionRecognition )
        resp = service(devid)
        return resp.emotion
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None

def text_to_speech(text):
    if text:
        tts = gTTS(text=text, lang='en')
        tts.save("speech.mp3")
        os.system("mpg321 speech.mp3")


# This function determines whether or not the chatbot has talked with the user
def history_recollection():
    #history = FaceRecognizer()
    #history.build_imagecsv()
    #user_number = history.RecognizeFace()
    #user_name = history.names[user_number]
    uid, user_name = face_recognize_client()

    if uid == -1:
        #print "did not recognize user ", user_name
        chatbot_response = "I don't think we've met before, what's your name?"
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", "Unknown")))
        user_interface.render()
        text_to_speech(chatbot_response)
        user_name = speech.recognize_speech()
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", user_name)))
        user_interface.render()
        #print "Name entered as: ", user_name
        #history.retrain(user_name)
        ret = face_retrain_client(temp_sentence)


    else:
        #print "recognized user ", user_name
        chatbot_response = "It's good to see you again, " + user_name
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", user_name)))
        user_interface.render()
        text_to_speech(chatbot_response)


    return user_name


#Enter a Mircosoft Speech token into the SpeechRecognition constructor
speech = SpeechRecognition("1a413224eeff42539b348bff8c1925c9")

#context = ContextRecognition()
#context.load_corpus("corpus/")
#context.load_model()

#emotion = EmotionRecognition()
#emotion.start()

# Enter a Mircosoft Speech token into the SpeechRecognition constructor
speech = SpeechRecognition("1a413224eeff42539b348bff8c1925c9")

user_interface = UserInterface(window)

#context = ContextRecognition()
#context.load_corpus("corpus/")
#context.load_model()

#emotion = EmotionRecognition(user_interface)
#emotion.start()
#>>>>>>> refs/remotes/origin/master:chatbot.py

# The chatbot will start listening to the user after they say "computer"
# The bot will then read your emotion via webcam
while input_sentence != "computer":
#<<<<<<< HEAD:catkin_ws/src/r_chatbot/src/chatbot.py
    #thread = Thread(target=emotion.run, args=())
    #thread.start()
#=======
    user_interface.update_sprites("Listening...", "Emotion: None", "User: Unknown")
    user_interface.render()

    # thread = Thread(target=emotion.run, args=())
    # thread.start()
 #   emotion.run()
#>>>>>>> refs/remotes/origin/master:chatbot.py

    input_sentence = speech.recognize_speech()
    print "You said: ", input_sentence

    #thread.join()
#<<<<<<< HEAD:catkin_ws/src/r_chatbot/src/chatbot.py
    #meeting_emotion = emotion.get_emotion()
    meeting_emotion = emotion_client()
    assert(meeting_emotion != None)
#=======
 #   meeting_emotion = emotion.get_emotion()
#>>>>>>> refs/remotes/origin/master:chatbot.py
    print "Emotion read: ", meeting_emotion

# Make a call to see whether or not the user is recognized
user_name = history_recollection()

#<<<<<<< HEAD:catkin_ws/src/r_chatbot/src/chatbot.py
#print "name: " + name
#Based on the emotion read from the webcam, the chatbot will respond differently
#=======

# Based on the emotion read from the webcam, the chatbot will respond differently
#>>>>>>> refs/remotes/origin/master:chatbot.py
if meeting_emotion is "Happy" or meeting_emotion is "Surprise":
    chatbot_response = "You seem like you're in a good mood today. How can I help you?"

elif meeting_emotion is "Neutral":
    chatbot_response = "How may I help you today?"

else:
    chatbot_response = "I sense that you may be bothered right now. How can I help?"

user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", user_name)))
user_interface.render()
text_to_speech(chatbot_response)


# Continously chat with the user until they say "goodbye computer"
chatbot_response = ""
input_sentence = speech.recognize_speech()
while input_sentence != "goodbye computer":
    #print "User said: ", input_sentence

    #response, correlation = context.compute_document_similarity(input_sentence)
    response, correlation = context_client(input_sentence)
    assert(correlation != None)
    assert(response != None)
    if correlation > 0:
        #print "Chatbot response: ", response, "\nCorrelation: ", correlation
        chatbot_response = response
    elif correlation == 0 and input_sentence:
        chatbot_response = "I'm sorry, but I couldn't find an appropriate response to your query."

    user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", "N/A")), " ".join(("User: ", user_name)))
    user_interface.render()
    text_to_speech(chatbot_response)

    chatbot_response = ""
    input_sentence = speech.recognize_speech()

#<<<<<<< HEAD:catkin_ws/src/r_chatbot/src/chatbot.py
#Run the emotion check again to see how the user feels after talking
#emotion.run()
#leaving_emotion = emotion.get_emotion()
leaving_emotion = emotion_client()
assert(leaving_emotion != None)
#print "Leaving emotion: ", leaving_emotion
#print "Name: ", name
#=======

# Run the emotion check again to see how the user feels after talking
#emotion.run()
#leaving_emotion = emotion.get_emotion()
#print "Leaving emotion: ", leaving_emotion
#print "Name: ", user_name
#>>>>>>> refs/remotes/origin/master:chatbot.py


# If the user came in happy and left sad, apologize to them
if (meeting_emotion is "Happy" or meeting_emotion is "Surprise") and (leaving_emotion is "Angry" or leaving_emotion is
    "Sad" or leaving_emotion is "Disgust" or leaving_emotion is "Fear"):

    chatbot_response = "It seems like I left you in a worse mood than when you arrived, hopefully I can do a better job next time."

# Else if the user came in angry and left happy, respond happy
elif (meeting_emotion is "Angry" or meeting_emotion is "Sad" or meeting_emotion is "Disgust" or meeting_emotion is "Fear") and (leaving_emotion is "Happy" or leaving_emotion is "Surprise"):
    chatbot_response = "It seems that you're in a better mood than when you arrived, I'm glad our conversation cheered you up."

# Otherwise, respond with a standard goodbye
else:
    if user_name is None:
        chatbot_response = "Goodbye. It was nice meeting you."
    else:
        chatbot_response = "Bye, " + user_name + ". It was nice talking to you."

user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", leaving_emotion)), " ".join(("User: ", user_name)))
user_interface.render()
text_to_speech(chatbot_response)















