from token2vec import init_embeddings

from parser import tokenized_class_titles, tokenized_class_titles_by_char

from token2vec import EMBEDDING_DIM

TOKENIZATION_TYPE = "char"
EMBEDDING_ALGO = "ngram"
EMBEDDING_TYPES = {
    "char-cbow": 2,
    "char-ngram": 0,
    "paren-cbow": 3,
    "paren-ngram": 1,
}
EMBEDDING_TYPE = EMBEDDING_TYPES["-".join([TOKENIZATION_TYPE, EMBEDDING_ALGO])]

### TODO define ml dnn class here


def embedding_info(embedding_type=None):
    initialized_embeddings = init_embeddings(as_list=True)
    embedding, _transform, token2ix = initialized_embeddings[
        embedding_type if embedding_type else EMBEDDING_TYPE
    ]
    return embedding, _transform, token2ix


def tokenized_titles_by_class_and_max_len(tokenization_type=None):
    return (
        tokenized_class_titles(debug=False)
        if tokenization_type == "paren"
        or not tokenization_type
        and TOKENIZATION_TYPE == "paren"
        else tokenized_class_titles_by_char(debug=False)
    )


if __name__ == "__main__":
    pass
