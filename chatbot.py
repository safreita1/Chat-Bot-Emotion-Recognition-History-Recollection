#! /usr/bin/env python

from gtts import gTTS
import os
import pyglet
# This line must be before the tensorflow initialization or the program crashes
window = pyglet.window.Window(fullscreen=True)

from emotion_recognition import EmotionRecognition
from context_recognition import ContextRecognition
from speech_to_text import SpeechRecognition
from face_recognizer import FaceRecognizer
from user_interface import UserInterface
from topic_extraction import TopicExtraction

input_sentence = ""
current_emotion = ""
top_words = []


def text_to_speech(text):
    if text:
        tts = gTTS(text=text, lang='en')
        tts.save("speech.mp3")
        os.system("mpg321 speech.mp3")


# This function determines whether or not the chatbot has talked with the user
def history_recollection():
    history = FaceRecognizer(user_interface)
    history.build_imagecsv()
    user_number = history.RecognizeFace()
    user_name = history.names[user_number]

    if user_name is None:
        #print "did not recognize user ", user_name
        chatbot_response = "I don't think we've met before, what's your name?"
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", "Unknown")), "Primary Topics: ")
        user_interface.render()
        text_to_speech(chatbot_response)
        user_name = speech.recognize_speech()
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", user_name)), "Primary Topics: ")
        user_interface.render()
        #print "Name entered as: ", user_name
        history.retrain(user_name)

    else:
        #print "recognized user ", user_name
        chatbot_response = "It's good to see you again, " + user_name
        user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", meeting_emotion)), " ".join(("User: ", user_name)), "Primary Topics: ")
        user_interface.render()
        text_to_speech(chatbot_response)

    history.exit()
    return user_name

# Enter a Mircosoft Speech token into the SpeechRecognition constructor
speech = SpeechRecognition("1a413224eeff42539b348bff8c1925c9")

user_interface = UserInterface(window)

context = ContextRecognition()
context.load_corpus("corpus/")
context.load_model()

emotion = EmotionRecognition(user_interface)
emotion.start()

# The chatbot will start listening to the user after they say "computer"
# The bot will then read your emotion via webcam
while input_sentence != "computer":
    user_interface.update_sprites("Listening...", "Emotion: None", "User: Unknown", "Primary Topics: ")
    user_interface.render()

    emotion.run()

    input_sentence = speech.recognize_speech()
    print "You said: ", input_sentence

    meeting_emotion = emotion.get_emotion()
    print "Emotion read: ", meeting_emotion

# Make a call to see whether or not the user is recognized
user_name = history_recollection()

topic_extract = TopicExtraction()
topic_extract.load_history(user_name)

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
    #print "User said: ", input_sentence

    if input_sentence != "":
        print "Original input sentence: ", input_sentence

        top_words = topic_extract.get_top_topics(input_sentence)
        #input_sentence = " ".join((input_sentence, top_words[0]))
        print input_sentence

        response, correlation = context.compute_document_similarity(input_sentence)

        if correlation > 0:
            #print "Chatbot response: ", response, "\nCorrelation: ", correlation
            chatbot_response = response

        elif correlation == 0 and input_sentence:
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


# Run the emotion check again to see how the user feels after talking
emotion.run()
leaving_emotion = emotion.get_emotion()
#print "Leaving emotion: ", leaving_emotion
#print "Name: ", user_name


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


if len(top_words) > 0:
    user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", "N/A")), " ".join(("User: ", user_name)), " ".join(("Primary Topics: ", top_words[0], ", ", top_words[1])))
else:
    user_interface.update_sprites(chatbot_response, " ".join(("Emotion: ", "N/A")), " ".join(("User: ", user_name)), "Primary Topics: ")
user_interface.render()
text_to_speech(chatbot_response)
topic_extract.write_history(user_name)















