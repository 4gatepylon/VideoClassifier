from token2vec import init_embeddings

from parser import tokenized_class_titles, tokenized_class_titles_by_char

from token2vec import EMBEDDING_DIM, PAD

from functools import reduce

import torch
import torch.nn as nn
import torch.nn.functional as F

TOKENIZATION_TYPE = "char"
EMBEDDING_ALGO = "ngram"
EMBEDDING_TYPES = {
    "char-cbow": 2,
    "char-ngram": 0,
    "paren-cbow": 3,
    "paren-ngram": 1,
}
EMBEDDING_TYPE = EMBEDDING_TYPES["-".join([TOKENIZATION_TYPE, EMBEDDING_ALGO])]


# (filter size, num filters of that size)
FILTERS = [(3, 10), (4, 8), (5, 6)]


class CNN_NLP(nn.Module):
    """
        An 1D Convulational Neural Network for Sentence Classification. based on
        https://chriskhanhtran.github.io/posts/cnn-sentence-classification/
    """

    def __init__(
        self, pretrained_embedding, embed_dim, filters, num_classes, dropout=0.5
    ):

        super(CNN_NLP, self).__init__()

        # Embedding layer
        self.vocab_size, self.embed_dim = pretrained_embedding.shape
        self.embedding = nn.Embedding.from_pretrained(pretrained_embedding)

        # Conv Network
        self.conv1d_list = nn.ModuleList(
            map(
                lambda f: nn.Conv1d(
                    in_channels=self.embed_dim, out_channels=f[1], kernel_size=f[0],
                ),
                filters,
            )
        )

        # Fully-connected layer and Dropout
        self.fc = nn.Linear(reduce(lambda acc, f: acc + f[1], filters, 0), num_classes)
        self.dropout = nn.Dropout(p=dropout)

    def forward(self, input_ids):
        # Get embeddings from `input_ids`. Output shape: (b, maxlen, embed_dim)
        x_embed = self.embedding(input_ids).float()

        # Permute `x_embed` to match input shape requirement of `nn.Conv1d`.
        # Output shape: (b, embed_dim, max_len)
        x_reshaped = x_embed.permute(0, 2, 1)

        # Apply CNN and ReLU. Output shape: (b, num_filters[i], L_out)
        x_conv_list = [F.relu(conv1d(x_reshaped)) for conv1d in self.conv1d_list]

        # Max pooling. Output shape: (b, num_filters[i], 1)
        x_pool_list = [
            F.max_pool1d(x_conv, kernel_size=x_conv.shape[2]) for x_conv in x_conv_list
        ]

        # Concatenate x_pool_list to feed the fully connected layer.
        # Output shape: (b, sum(num_filters))
        x_fc = torch.cat([x_pool.squeeze(dim=2) for x_pool in x_pool_list], dim=1)

        # Compute logits. Output shape: (b, n_classes)
        logits = self.fc(self.dropout(x_fc))

        return logits


""" return 
    the embedding (pretrained), 
    the _transform function to get a token and token2ix and return the embedding, 
    and token2ix (mapping tokens to a unique numerical id i.e. index of embedding tensor for embedding vector
"""


def embedding_info(embedding_type=None):
    initialized_embeddings = init_embeddings(as_list=True)
    embedding, _transform, token2ix = initialized_embeddings[
        embedding_type if embedding_type else EMBEDDING_TYPE
    ]
    return embedding, _transform, token2ix


""" return the tokenized titles for the r ight tokenization type and the max length to pad """

# get the tokenized titles by class and max len without padding yet
def tokenized_titles_by_class_and_max_len(tokenization_type=None):
    return (
        tokenized_class_titles(debug=False)
        if tokenization_type == "paren"
        or not tokenization_type
        and TOKENIZATION_TYPE == "paren"
        else tokenized_class_titles_by_char(debug=False)
    )


""" return a copy of the tokenized datastructure but with the titles padded """


def padded_titles(tokenization_type=None):
    tokenized, maxlen = tokenized_titles_by_class_and_max_len(
        tokenization_type=tokenization_type
    )

    return (
        {
            _class: list(
                map(
                    lambda title: title
                    if len(title) == maxlen
                    else title + [PAD] * (maxlen - len(title)),
                    titles,
                )
            )
            for _class, titles in tokenized.items()
        },
        maxlen,
    )


if __name__ == "__main__":
    pass
