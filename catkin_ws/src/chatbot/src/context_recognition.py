import nltk
import string
import os
import pickle
from sklearn.feature_extraction.text import TfidfVectorizer
from nltk.stem.porter import PorterStemmer
from sklearn.metrics.pairwise import linear_kernel

stemmer = PorterStemmer()
token_dict = {}


def preprocess_input(input_sentence):
    processed_sentence = input_sentence.lower()
    processed_sentence = processed_sentence.translate(None, string.punctuation)
    processed_sentence = tokenize(processed_sentence)
    return processed_sentence


def stem_tokens(tokens, stemmer):
    stemmed = []
    for item in tokens:
        stemmed.append(stemmer.stem(item))

    return stemmed


def tokenize(text):
    tokens = nltk.word_tokenize(text)
    stems = stem_tokens(tokens, stemmer)
    return stems


class ContextRecognition:
    tf_idf = None
    tf_idf_matrix = None
    model_loaded = False
    save_file = 'current_models/tfidf.pkl'
    load_file = 'current_models/tfidf.pkl'

    def __init__(self):
        self.tf_idf = TfidfVectorizer(tokenizer=tokenize, stop_words='english')

    def load_model(self):
        self.tf_idf = pickle.load(open(self.load_file, 'rb'))
        self.tf_idf_matrix = pickle.load(open('current_models/tfidf_matrix.pkl', 'rb'))
        self.model_loaded = True

    def save_model(self):
        with open(self.save_file, 'wb') as handle:
            pickle.dump(self.tf_idf, handle)
        with open('current_models/tfidf_matrix.pkl', 'wb') as handle:
            pickle.dump(self.tf_idf_matrix, handle)

    def load_corpus(self, path_to_corpus):
        path = path_to_corpus
        sentence_index = 0
        for subdir, dirs, files in os.walk(path):
            for file in files:
                file_path = subdir + os.path.sep + file
                #Check that the file is not empty
                if os.path.getsize(file_path) > 0:
                    document = open(file_path, 'r')
                    text = document.read()
                    lowers = text.lower()
                    no_punctuation = lowers.translate(None, string.punctuation)
                    sentences = no_punctuation.splitlines()
                    for sentence in sentences:
                        token_dict[sentence_index] = sentence
                        sentence_index += 1

        return

    def compute_document_similarity(self, input_sentence):
        best_match = 'No response is available to your statement.'
        correlation = 0

        if not self.model_loaded:
            self.tf_idf_matrix = self.tf_idf.fit_transform(token_dict.values())

        input_sentence_converted = self.tf_idf.transform([input_sentence])
        cosine_similarities = linear_kernel(input_sentence_converted, self.tf_idf_matrix).flatten()
        related_docs_indices = cosine_similarities.argsort()[:-5:-1]
        related_doc_scores = cosine_similarities[related_docs_indices]

        if related_doc_scores[0] > 0:
            best_match = token_dict[related_docs_indices[0]]
            correlation = related_doc_scores[0]

        return best_match, correlation