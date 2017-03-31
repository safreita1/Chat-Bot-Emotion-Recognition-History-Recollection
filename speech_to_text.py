import speech_recognition as sr

class SpeechRecognition():
    bing_key = ""  # Microsoft Bing Voice Recognition API keys 32-character lowercase hexadecimal strings
    stop_listening = None
    recognizer = None
    microphone = None

    def __init__(self, bing_key):
        self.bing_key = bing_key
        self.recognizer = sr.Recognizer()
        self.microphone = sr.Microphone()

    def recognize_speech(self):
        speech_to_text = ""

        with sr.Microphone() as source:
            print("Say something!")
            self.recognizer.non_speaking_duration = 0.4
            self.recognizer.pause_threshold = 0.4
            audio = self.recognizer.listen(source, timeout=None)

        try:
            speech_to_text = self.recognizer.recognize_bing(audio, key=self.bing_key)
        except sr.UnknownValueError:
            print("Microsoft Bing Voice Recognition could not understand audio")
        except sr.RequestError as e:
            print("Could not request results from Microsoft Bing Voice Recognition service; {0}".format(e))

        return speech_to_text

