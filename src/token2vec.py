"""
A simple n-gram model to try and create token2vec from tokens stored in a designated file or created by importing
from parser
"""

from parser import TOKEN_MAP_STORE_PATH_CHAR as token_path_char
from parser import TOKEN_MAP_STORE_PATH_PAREN as token_path_paren

from parser import TOKEN_EMBEDDING_STORE_PATH_CHAR as embedding_path_char
from parser import TOKEN_EMBEDDING_STORE_PAREN as embedding_path_paren

from parser import tokenized_class_titles, tokenized_class_titles_by_char, _debug_print

## TODO maybe not parser, but create a module for all this file work
from os import listdir
from os.path import isfile, join
from pathlib import Path

import pickle

from datetime import datetime

"""
here at the top we have some file helpers to write embeddings and other useful information like
tokenization (caching) and also train embeddings using a basic n-gram model that can have
its hyperparameters set up above here
"""

## TODO for both provide an option to flush/ignore older cache store information
# observe the code in title_classifier that uses the probability distribution
def init_token_classes(as_list=False):
    init = _init_token_classes()
    return list(init) if as_list else init

def _init_token_classes():
    for create, path, _type in [
        (tokenized_class_titles_by_char, token_path_char, "char"), 
        (tokenized_class_titles, token_path_paren, "paren")
        ]:
        try:
            to_open_file = path + max(
                file for file in listdir(path) if isfile(join(path, file))
                )
            with open(to_open_file, 'rb') as handle:
                class2tokens = pickle.load(handle)
                print(f"found an existing cached {_type} tokenization")
        except:
            print(f"did not find a cached {_type} tokenization... will create one")
            class2tokens = create()
            now = datetime.now()

            Path(path).mkdir(parents=True, exist_ok=True)
            to_write_file = path + now.strftime("%m-%d-%Y, %H:%M:%S")

            with open(to_write_file, 'wb') as handle:
                pickle.dump(class2tokens, handle, protocol=pickle.HIGHEST_PROTOCOL)

        yield class2tokens

def init_embeddings():
    # TODO! (copy as above but use the n gram model below)
    char_embedding, paren_embedding = None, None
    return char_embedding, paren_embedding

if __name__ == "__main__":
    tokenized_by_char, tokenized_by_parens = init_token_classes()
    #_debug_print(tokenized_by_parens)