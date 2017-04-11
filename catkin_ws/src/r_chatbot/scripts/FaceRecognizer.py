import sys, cv2, csv, os, numpy

import r_chatbot
from PIL import Image
from scipy.misc import imresize
import rospy
from r_chatbot.srv import *



class FaceRecognizer:
    def __init__(self):
        # Create and load the classifier, capture the images
        self.train_csv = "face_data.csv"  # sys.argv[1]
        self.cascade = "haar_cascade/haarcascade_frontalface_default.xml"
        self.name_csv = "name_data.csv"# sys.argv[2]
        self.build_imagecsv()
        self.images, self.labels = self.read_imagecsv()
        self.size = self.images[0].shape
        self.names = self.read_namecsv()
        self.faceCascade = cv2.CascadeClassifier(self.cascade)
        self.recognizer = cv2.createFisherFaceRecognizer(threshold=800)
        self.recognizer.train(self.images, self.labels)
        self.maxlabel = max(self.labels)
        self.facereq_server()

    def build_imagecsv(self):
        # Builds the face_data.csv from the att_faces relative directory
        # Files must be in the form s#/image
        # Tuples are stored as abs_path;#
        os.remove("face_data.csv")
        BASE_PATH = os.getcwd() + "/att_faces"
        SEPARATOR = ";"
        label = 1
        f = open('face_data.csv', 'w')
        for dirname, dirnames, filenames in os.walk(BASE_PATH):
            for subdirname in dirnames:
                subject_path = os.path.join(dirname, subdirname)
                folder_name = subdirname[1:]
                for filename in os.listdir(subject_path):
                    if not filename == '.DS_Store':
                        abs_path = "%s/%s" % (subject_path, filename)
                        f.write(abs_path + SEPARATOR + str(folder_name) + "\n")
                        # print "%s%s%d" % (abs_path, SEPARATOR, label)
                label = label + 1
        f.close()

    def update_namecsv(self, label, name):
        # Accepts a label and name and appends them to the name_csv file in cwd
        # Updates the list of names
        rows = []
        with open('name_data.csv', 'rb') as csvfile:
            reader = csv.reader(csvfile, delimiter=';')
            for row in reader:
                rows.append([row[0], row[1]])
        s = [str(label), str(name)]
        rows.append(s)
        os.remove("name_data.csv")
        with open('name_data.csv', 'w') as csvfile:
            for row in rows:
                csvfile.write(str(row[0]+";"+row[1]+"\n"))
        self.names = self.read_namecsv()


    def read_imagecsv(self):
        # Returns numpy arrays of the images and their labels
        image = []
        label = []

        with open(self.train_csv, 'rb') as csvfile:
            reader = csv.reader(csvfile, delimiter=';')
            for row in reader:
                image.append(numpy.array(Image.open(row[0]).convert('L'), 'uint8'))
                # print row
                label.append(int(row[1]))

        return numpy.array(image), numpy.array(label)


    def read_namecsv(self):
        # Assumes each label has only one name
        # Names are accessed using the label as the index
        rows = []
        with open(self.name_csv, 'rb') as csvfile:
            reader = csv.reader(csvfile, delimiter=';')
            for row in reader:
               # print row[0] + " " +row[1]
                rows.append([row[0], row[1]])
            names = [None] *100#* (len(rows) + 1)
            for row in rows:
                names[int(row[0])] = row[1]
        return names


    def retrain(self, req):
        # Assume one new face at a time
        # Capture 10 faces from 10 frames, add them to the database, and retrain
       # print "adding new face"

        #print self.maxlabel
        facelist = []
        name = req.name
        self.vcap = cv2.VideoCapture(int(req.devid))

        c = 0
        while True:
            ret, frame = self.vcap.read()
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            faces = self.faceCascade.detectMultiScale(
                gray,
                scaleFactor=1.2,
                minNeighbors=5,
                minSize=(30, 30),
                flags=cv2.cv.CV_HAAR_SCALE_IMAGE
            )
            for (x, y, w, h) in faces:
                face = numpy.array(gray[y: y + h, x: x + w])
                face = cv2.resize(face, (self.size[1], self.size[0]), 1.0, 1.0)
                # cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)
                nbr_predicted, conf = self.recognizer.predict(face)
                if nbr_predicted < 0:
                    facelist.append(face)
                    break
            # cv2.imshow('Video', frame)
            c = c + 1
            if c > 10:
                break
        self.vcap.release()
        cv2.destroyAllWindows()
        if len(facelist)> 0:
            self.maxlabel += 1
            print "Adding: " + name
            path = "att_faces/s" + str(self.maxlabel)
            os.mkdir(path)
            for i in range(1, len(facelist)):
                cv2.imwrite(path + '/face' + str(i) + '.png', facelist[i])
            self.images, self.labels = self.read_imagecsv()
            self.update_namecsv(self.maxlabel, name)
            self.recognizer.train(self.images, self.labels)
            return self.maxlabel
        else:
            print "Failed to add: " + name
            return -1

    def RecognizeFace(self, req):
        reclist = []
        self.vcap = cv2.VideoCapture(int(req.devid))
        c = 0
        while True:
            ret, frame = self.vcap.read()
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            faces = self.faceCascade.detectMultiScale(
              gray,
                scaleFactor=1.2,
                minNeighbors=5,
                minSize=(30, 30),
                flags=cv2.cv.CV_HAAR_SCALE_IMAGE
            )
            for (x, y, w, h) in faces:
                face = numpy.array(gray[y: y + h, x: x + w])
                face = cv2.resize(face, (self.size[1], self.size[0]), 1.0, 1.0)
                #cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)
                nbr_predicted, conf = self.recognizer.predict(face)
                break
            #cv2.imshow('Video', frame)
            c = c + 1
            if cv2.waitKey(1) & 0xFF == ord('q') or c > 10:
                # print c
                break
        self.vcap.release()
        cv2.destroyAllWindows()
        if nbr_predicted < 0:
            name = ""
        else:
            name = self.names[nbr_predicted]

        print "Returning: %d %s"%(nbr_predicted, name)
        return nbr_predicted, name
    def facereq_server(self):
        rospy.init_node('facereq_server')
        s1 = rospy.Service('facereq', r_chatbot.srv.FaceRecognize, self.RecognizeFace)
        s2 = rospy.Service('facetrain', r_chatbot.srv.FaceTrain, self.retrain)
        print "Facereq server ready"
        rospy.spin()


if __name__ == "__main__":
    facerec = FaceRecognizer()

