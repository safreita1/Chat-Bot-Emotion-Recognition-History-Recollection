# Code based on work from:
# Author: Olivier Grisel <olivier.grisel@ensta.org>
#         Lars Buitinck
#         Chyi-Kwei Yau <chyikwei.yau@gmail.com>
# License: BSD 3 clause
# URL: http://scikit-learn.org/stable/auto_examples/applications/topics_extraction_with_nmf_lda.html

from sklearn.feature_extraction.text import TfidfVectorizer, CountVectorizer
from sklearn.decomposition import NMF, LatentDirichletAllocation
import random
import os
import rospy
from r_chatbot.srv import *
from r_chatbot.msg import StringList

class TopicExtraction:

    def __init__(self):
        self.n_top_words = 1
        self.n_samples = 2000
        self.n_features = 1000
        self.n_topics = 2
        self.previous_conversation = []
        self.topic_server()

    def load_history(self, username):
        check = os.path.isfile('history/' + username + '_history')
        self.previous_conversation = []
        if check:
            with open('history/' + username + '_history') as f:
                for line in f:
                    self.previous_conversation.append(line)

    def get_top_topics(self, input_sentence):
        self.append_to_history(input_sentence)
        (nmf, lda, nmf_words, lda_words) = self.find_topics()
        top_words = self.print_top_words(nmf, nmf_words)
        return top_words

    def append_to_history(self, conversation):
        self.previous_conversation.append(conversation)

    def print_top_words(self, model, feature_names):
        topics=[]
        for topic_idx, topic in enumerate(model.components_):
            top = " ".join([feature_names[i]
                          for i in topic.argsort()[:-self.n_top_words - 1:-1]])
            topics.append(top)
        return topics

    def find_topics(self):
        print("Loading dataset...")

        random.shuffle(self.previous_conversation)
        data_samples = self.previous_conversation

        tfidf_vectorizer = TfidfVectorizer(max_df=1.0, min_df=0.0,
                                         max_features=self.n_features,
                                         stop_words='english', encoding='ascii')
        tfidf = tfidf_vectorizer.fit_transform(data_samples)
        tf_vectorizer = CountVectorizer(max_df=1.0, min_df=0.0,
                                      max_features=self.n_features,
                                      stop_words='english', encoding='ascii')
        tf = tf_vectorizer.fit_transform(data_samples)


        # Fit the NMF model
        nmf = NMF(n_components=self.n_topics, random_state=1,
                alpha=.1, l1_ratio=.5).fit(tfidf)

        tfidf_feature_names = tfidf_vectorizer.get_feature_names()

        lda = LatentDirichletAllocation(n_topics=self.n_topics, max_iter=5,
                                      learning_method='online',
                                      learning_offset=50.,
                                      random_state=0)
        lda.fit(tf)
        tf_feature_names = tf_vectorizer.get_feature_names()

        return nmf, lda, tfidf_feature_names, tf_feature_names

    def write_history(self, username):
        with open('history/' + username + '_history', "w+") as f:
            for line in self.previous_conversation:
                f.write(line+' ')
        f.close()

    def write_history_service(self, req):
        self.write_history(req. username)
        return 1

    def get_topics_service(self, req):
        top_words = self.get_top_topics(req.input_sentence)
        wordlist = [str(top_words[x]) for x in range(len(top_words))]
        str_list = StringList(wordlist)
        #str_list.data = wordlist
        print "top words", str_list
        return str_list#self.get_top_topics(req.input_sentence)

    def load_history_service(self, req):
        self.load_history(req.username)
        return 1

    def topic_server(self):
        rospy.init_node('topic_server')
        s1 = rospy.Service('get_top_topics', GetTopics, self.get_topics_service)
        s2 = rospy.Service('write_history', WriteHistory, self.write_history_service)
        s3 = rospy.Service('load_history', LoadHistory, self.load_history_service)
        print "topic server ready"
        rospy.spin()
        
topic = TopicExtraction();