#! /usr/bin/env python

from gtts import gTTS
import os
from threading import Thread
import rospy
import r_chatbot

#from emotion_recognition import EmotionRecognition
#from context_recognition import ContextRecognition
from speech_to_text import SpeechRecognition


input_sentence = ""
current_emotion = ""
devid = 0
def face_recognize_client():
    rospy.wait_for_service('facereq')
    try:
        service = rospy.ServiceProxy('facereq', r_chatbot.srv.FaceTrain)
        resp = service(devid)
        return resp.id, resp.name
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None, None

def face_retrain_client(name):
    rospy.wait_for_service('facetrain')
    try:
        service = rospy.ServiceProxy('facetrain', r_chatbot.srv.FaceTrain )
        resp = service(name)
        return resp.id
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None

def context_client(input):
    rospy.wait_for_service('context')
    try:
        service = rospy.ServiceProxy('context', r_chatbot.srv.Context)
        resp = service(input)
        return resp.response, resp.correlation
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None, None

def emotion_client():
    rospy.wait_for_service('emotionreq')
    try:
        service = rospy.ServiceProxy('emotionreq', r_chatbot.srv.EmotionRecognition )
        resp = service(devid)
        return resp.emotion
    except rospy.ServiceException, e:
        print "Service call failed: %s\n"%e
        return None

def text_to_speech(text):
    tts = gTTS(text=text, lang='en')
    tts.save("speech.mp3")
    os.system("mpg321 speech.mp3")

#This function determines whether or not the chatbot has talked with the user
def history_recollection():
    #history = FaceRecognizer()
    #history.build_imagecsv()
    #user_number = history.RecognizeFace()
    #user_name = history.names[user_number]
    uid, user_name = face_recognize_client()

    if user_name is None:
        print "did not recognize user ", user_name
        text_to_speech("I don't think we've met before, what's your name?")
        temp_sentence = speech.recognize_speech()
        print "Name entered as: ", temp_sentence
        #history.retrain(temp_sentence)
        ret = face_retrain_client(temp_sentence)
        assert(ret != None)

    else:
        print "recognized user ", user_name
        temp_sentence = "It's good to see you again, " + user_name
        text_to_speech(temp_sentence)
    return user_name

#Enter a Mircosoft Speech token into the SpeechRecognition constructor
speech = SpeechRecognition("1a413224eeff42539b348bff8c1925c9")

#context = ContextRecognition()
#context.load_corpus("corpus/")
#context.load_model()

#emotion = EmotionRecognition()
#emotion.start()

#The chatbot will start listening to the user after they say "computer"
#The bot will then read your emotion via webcam
while input_sentence != "computer":
    #thread = Thread(target=emotion.run, args=())
    #thread.start()

    input_sentence = speech.recognize_speech()
    print "You said: ", input_sentence

    #thread.join()
    #meeting_emotion = emotion.get_emotion()
    meeting_emotion = emotion_client()
    assert(meeting_emotion != None)
    print "Emotion read: ", meeting_emotion

#Make a call to see whether or not the user is recognized
name = history_recollection()


#Based on the emotion read from the webcam, the chatbot will respond differently
if meeting_emotion is "Happy" or meeting_emotion is "Surprise":
    text_to_speech("You seem like you're in a good mood today. How can I help you?")

elif meeting_emotion is "Neutral":
    text_to_speech("How may I help you today?")

else:
    text_to_speech("I sense that you may be bothered right now. How can I help?")


#Continously chat with the user until they say "goodbye computer"
input_sentence = speech.recognize_speech()
while input_sentence != "goodbye computer":
    print "User said: ", input_sentence

    #response, correlation = context.compute_document_similarity(input_sentence)
    response, correlation = context_client(input_sentence)
    assert(correlation != None)
    assert(response != None)
    if correlation > 0:
        print "Chatbot response: ", response, "\nCorrelation: ", correlation
        text_to_speech(response)
    elif correlation == 0 and input_sentence:
        text_to_speech("I'm sorry, but I couldn't find an appropriate response to your query.")

    input_sentence = speech.recognize_speech()

#Run the emotion check again to see how the user feels after talking
#emotion.run()
#leaving_emotion = emotion.get_emotion()
leaving_emotion = emotion_client()
assert(leaving_emotion != None)
print "Leaving emotion: ", leaving_emotion
print "Name: ", name


#If the user came in happy and left sad, apologize to them
if (meeting_emotion is "Happy" or meeting_emotion is "Surprise") and (leaving_emotion is "Angry" or leaving_emotion is
    "Sad" or leaving_emotion is "Disgust" or leaving_emotion is "Fear"):
    text_to_speech("It seems like I left you in a worse mood than when you arrived, hopefully I can do a better job next time.")

#Else if the user came in angry and left happy, respond happy
elif (meeting_emotion is "Angry" or meeting_emotion is "Sad" or meeting_emotion is "Disgust" or meeting_emotion is "Fear") and (leaving_emotion is "Happy" or leaving_emotion is "Surprise"):
    text_to_speech("It seems that you're in a better mood than when you arrived, I'm glad our conversation cheered you up.")

#Otherwise, respond with a standard goodbye
else:
    if name is None:
        text_to_speech("Goodbye. It was nice meeting you.")

    else:
        input_sentence = "Bye, " + name + ". It was nice talking to you."
        text_to_speech(input_sentence)















