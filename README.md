# Chat Bot w/ Emotion Recognition and History Recollection

This goal of this project is to create a conversational agent that can sense a users current
emotional state, remember prior conversations and respond appropriately to the user given this
additional information.

Project was created for a graduate class, Perception in Robotics, at ASU. The project was a joing effort between three contributors:
Scott Freitas,
Benjamin Clayton,
Josh Feinglass

### The program has a few hardware requirements that must be met in order for it to run properly:
(1) Webcam
(2) Microphone
(3) NVIDIA graphics card with ~8GB of RAM

### In order to run the program:
(1) Get a Microsoft Bing Voice Recognition API key and enter it into the second line under main in the chatbot.py
file.

(2) Run chatbot.py

Note: The code has only been tested under Ubuntu 14.04. In addition, the visual interface will likely not display
properly for all monitor resolutions. Only tested under 2560 x 1695.

### Youtube Demonstration Video:
https://www.youtube.com/watch?v=Ze4XzxQIzNs


# Website references used to help create this project:

Emotion Recognition:

(1) https://github.com/tflearn/tflearn/blob/master/examples/images/residual_network_cifar10.py

Context Recognition:

(2) http://www.cs.duke.edu/courses/spring14/compsci290/assignments/lab02.html

(3) http://stackoverflow.com/questions/12118720/python-tf-idf-cosine-to-find-document-similarity

GUI:

(4)http://pyglet.readthedocs.io/en/pyglet-1.2-maintenance/programming_guide/image.html#displaying-images

(5)http://stackoverflow.com/questions/37354309/pyglet-hello-world-example-doesnt-show-label-until-a-key-is-pressed

Voice-to-text:

(6) https://pypi.python.org/pypi/SpeechRecognition/

Text-to-speech:

(7) http://pythonprogramminglanguage.com/text-to-speech/

Face recognition:

(8) http://docs.opencv.org/2.4/modules/contrib/doc/facerec/tutorial/facerec_video_recognition.html

Text topic analysis:

(9) http://scikit-learn.org/stable/auto_examples/applications/topics_extraction_with_nmf_lda.html

(10) https://papers.nips.cc/paper/3902-online-learning-for-latent-dirichlet-allocation.pdf
