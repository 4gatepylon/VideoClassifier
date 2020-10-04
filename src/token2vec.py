"""
A simple n-gram model to try and create token2vec from tokens stored in a designated file or created by importing
from parser
"""

from parser import TOKEN_MAP_STORE_PATH_CHAR as token_path_char
from parser import TOKEN_MAP_STORE_PATH_PAREN as token_path_paren

from parser import TOKEN_EMBEDDING_STORE_PATH_CHAR as embedding_path_char
from parser import TOKEN_EMBEDDING_STORE_PAREN as embedding_path_paren

from parser import tokenized_class_titles, tokenized_class_titles_by_char, _debug_print

from cache_manager import rw_most_recent_from_cache as rw

"""
here at the top we have some file helpers to write embeddings and other useful information like
tokenization (caching) and also train embeddings using a basic n-gram model that can have
its hyperparameters set up above here
"""

""" rw cached token classes """
def init_token_classes(as_list=True):
    ## TODO for both provide an option to flush/ignore older cache store information
    # observe the code in title_classifier that uses the probability distribution
    init = _init_token_classes()
    return list(init) if as_list else init

def _init_token_classes():
    for create, path, _type in [
        (tokenized_class_titles_by_char, token_path_char, "char tokenization"), 
        (tokenized_class_titles, token_path_paren, "paren tokenization")
        ]:
        yield rw(create, path, _type)

""" initialize embeddings by getting token classes using init_token_classes as above and n gram model below """
def init_embeddings(as_list=True):
    init = _init_embeddings()
    return list(init) if as_list else init

def _init_embeddings():
    # would be nicer to use the generator and generate in the for loop if possible
    class2tokens = init_token_classes()
    for create, path, _type in [
        (create_embeddings(class2tokens[0]), embedding_path_char, "char tokenization"), 
        (create_embeddings(class2tokens[1]), embedding_path_paren, "paren tokenization")
        ]:
        yield rw(create, path, _type)

""" sneaky wrapper for rw """
def create_embeddings(info):
    def no_params_create_embeddings():
        return info
    
    return no_params

if __name__ == "__main__":
    tokenized_by_char, tokenized_by_parens = init_token_classes()
    #_debug_print(tokenized_by_parens)