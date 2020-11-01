from token2vec import init_embeddings, some_items

from parser import tokenized_class_titles, tokenized_class_titles_by_char

# embedding_dim is going to be shared by both models so its ok to share the folder
from token2vec import EMBEDDING_DIM, PAD
from token2vec import NLP_CNN_CHAR_PATH, NLP_CNN_PAREN_PATH

# in the future may also want to be loading some models
from cache_manager import save_model

from functools import reduce

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

import random

NUM_EPOCHS = 10
BATCH_SIZE = 1000

LEARNING_RATE = 0.01
TOKENIZATION_TYPE = "char"
EMBEDDING_ALGO = "ngram"
EMBEDDING_TYPES = {
    "char-cbow": 2,
    "char-ngram": 0,
    "paren-cbow": 3,
    "paren-ngram": 1,
}
SAVE_PATH = NLP_CNN_CHAR_PATH if TOKENIZATION_TYPE == "char" else NLP_CNN_PAREN_PATH
EMBEDDING_TYPE = EMBEDDING_TYPES["-".join([TOKENIZATION_TYPE, EMBEDDING_ALGO])]

if __name__ == "__main__":
    pass
