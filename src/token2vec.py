"""
A simple n-gram model to try and create token2vec from tokens stored in a designated file or created by importing
from parser
"""

# so we can store class : tokenized titles
from parser import TOKEN_MAP_STORE_PATH_CHAR as token_path_char
from parser import TOKEN_MAP_STORE_PATH_PAREN as token_path_paren

"""
embedding is stored as a pickled {'model' : model, 'token2ix' : token2ix, 'embedding' : embedding }
where token 2ix is {token : integer} and that can be turned into a singleton tensor
"""
from parser import EMBEDDING_MODEL_N_GRAM_CHAR as model_path_char_n_gram
from parser import EMBEDDING_MODEL_N_GRAM_PAREN as model_path_paren_n_gram
from parser import EMBEDDING_MODEL_CBOW_CHAR as model_path_char_cbow
from parser import EMBEDDING_MODEL_CBOW_PAREN as model_path_paren_cbow

from parser import TOKEN_TO_IX_CHAR as token2ix_path_char
from parser import TOKEN_TO_IX_PAREN as token2ix_path_paren

from parser import tokenized_class_titles, tokenized_class_titles_by_char, _debug_print

from cache_manager import rw_most_recent_from_cache as rw
from cache_manager import save_model, load_model

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

import random

PAD = "<pad>"

GRAM_SIZE = 5  # context size is gram size - 1
EMBEDDING_DIM = 25  # higher means more dimensions stuff can vary on

CBOW_SIZE = 5  # this should be an odd number (one in the middle, even on each side)

# think about improving this with an optimizer that changes learning rate!
LEARNING_RATE_N_GRAM = 0.005
NUM_EPOCHS_N_GRAM = 10
BATCH_SIZE_N_GRAM = 1000

LEARNING_RATE_CBOW = 0.005
NUM_EPOCHS_CBOW = 10
BATCH_SIZE_CBOW = 1000

###
### TODO : consider changing the targets by logically grouping them by my experience (i.e. compress many into one)
### since as we know most of them appear only once, making the processing actually less effective (only slightly
### above random)
###
### basically the idea is to group similar tokens into a single class and then rewarding the optimizer
### even if it picked the wrong token as long as it picked within the right class of tokens
###

""" basic token-training models at the top; we intend on using CBOW and NGram"""

# https://pytorch.org/tutorials/beginner/nlp/word_embeddings_tutorial.html#sphx-glr-beginner-nlp-word-embeddings-tutorial-py
class NGramLanguageModeler(nn.Module):
    def __init__(self, vocab_size, embedding_dim, gram_size):
        super(NGramLanguageModeler, self).__init__()

        context_size = gram_size - 1

        self.embeddings = nn.Embedding(vocab_size, embedding_dim)
        self.linear1 = nn.Linear(context_size * embedding_dim, 128)
        self.linear2 = nn.Linear(128, vocab_size)

    def forward(self, inputs):
        embeds = self.embeddings(inputs).view((1, -1))
        out = F.relu(self.linear1(embeds))
        out = self.linear2(out)
        log_probs = F.log_softmax(out, dim=1)
        return log_probs

    def embedding_dictionary(self, tokens, transform=None, key_transform=False):
        if key_transform:
            return (
                {
                    token: self.embeddings(
                        token if transform is None else transform(token)
                    )
                    for token in tokens
                },
                None,
            )
        else:
            return {
                token: self.embeddings(token)
                for token in map(lambda token: transform(token), tokens)
            }

    def embedding_for(self, token, transform=None):
        return self.embeddings(token if transform is None else transform(token))


class CBOW(nn.Module):

    # cbow_size includes middle to context size is cbow_size // 2 on each side (it's odd)
    def __init__(self, vocab_size, embedding_dim, cbow_size):
        super(CBOW, self).__init__()
        self.embeddings = nn.Embedding(vocab_size, embedding_dim)
        self.linear1 = nn.Linear((cbow_size - 1) * embedding_dim, 264)
        self.linear2 = nn.Linear(264, vocab_size)

    def forward(self, inputs):
        embeds = self.embeddings(inputs).view((1, -1))
        out = F.relu(self.linear1(embeds))
        out = self.linear2(out)
        log_probs = F.log_softmax(out, dim=1)
        return log_probs

    def embedding_dictionary(self, tokens, transform=None, key_transform=False):
        if key_transform:
            return (
                {
                    token: self.embeddings(
                        token if transform is None else transform(token)
                    )
                    for token in tokens
                },
                None,
            )
        else:
            return {
                token: self.embeddings(token)
                for token in map(lambda token: transform(token), tokens)
            }

    def embedding_for(self, token, transform=None):
        return self.embeddings(token if transform is None else transform(token))


"""
here we have some file helpers to write embeddings and other useful information like
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
        (tokenized_class_titles, token_path_paren, "paren tokenization"),
    ]:
        yield rw(create, path, _type)


""" initialize embeddings by getting token classes using init_token_classes as above and n gram model below """


def init_embeddings(as_list=True):
    init = _init_embeddings()
    return list(init) if as_list else init


def _init_embeddings():
    # there are many opportunities to shorten this code
    # would be nicer to use the generator and generate in the for loop if possible
    class2tokens_dicts = init_token_classes()
    i = 0
    for path, _type in [
        (model_path_char_n_gram, "char tokenization"),
        (model_path_paren_n_gram, "paren tokenization"),
    ]:
        yield create_embeddings_n_gram(
            class2tokens_dicts[i], path, _type, use_pretrained=False
        )
        i += 1
    i = 0
    for path, _type in [
        (model_path_char_cbow, "char tokenization"),
        (model_path_paren_cbow, "paren tokenization"),
    ]:
        yield create_embeddings_cbow(
            class2tokens_dicts[i], path, _type, use_pretrained=False
        )
        i += 1


"""
create embeddings and return a transform from the tokens to the inputs of the embeddings
as well but it will require token2ix to be loaded prior (also returned):
embedding, transform, token2ix
"""

""" below here and above the n-gram code is the cbow code """


def create_embeddings_cbow(
    class2tokens,
    path,
    _type,
    epochs=NUM_EPOCHS_CBOW,
    batch_size=BATCH_SIZE_CBOW,
    lr=LEARNING_RATE_CBOW,
    use_pretrained=True,
):
    cbows = _map_class2tokens_to_cbows(class2tokens)  # TODO

    vocab = _generate_vocab(cbows)  # this can be shared by both cbows and ngrams

    token2ix = {word: i + 1 for i, word in enumerate(vocab)}
    token2ix[PAD] = 0

    if CBOW_SIZE % 2 == 0:
        raise ValueError(
            "Cannot have even CBOW_SIZE... it has to be odd so that the left and right are each equal with the target in the middle."
        )

    if use_pretrained:
        try:
            model = load_model(path)
        except:
            print("Failed to load cbow model, creating a new one")
            # + 1 for pad
            model = CBOW(len(vocab) + 1, EMBEDDING_DIM, CBOW_SIZE)
    else:
        model = CBOW(len(vocab) + 1, EMBEDDING_DIM, CBOW_SIZE)

    losses = []
    loss_function = nn.NLLLoss()
    optimizer = optim.SGD(model.parameters(), lr=0.005)

    print(f"training cbow for {_type}...")
    for epoch in range(epochs):
        print(f"\tepoch {epoch}")

        total_loss = 0
        for cbow in some_items(batch_size, cbows):
            target = cbow[
                len(cbow) // 2
            ]  # i.e. 1 2 3 4 5 -> want 3 5 // 2 = 2 wich is right in zero indexing
            context = _cbow_context(cbow)

            context_idxs = torch.tensor(
                [token2ix[w] for w in context], dtype=torch.long
            )

            model.zero_grad()
            log_probs = model(context_idxs)

            loss = loss_function(
                log_probs, torch.tensor([token2ix[target]], dtype=torch.long)
            )

            loss.backward()
            optimizer.step()

            total_loss += loss.item()
        losses.append(total_loss)

    print("finished training cbow based token2vec (from the batch size)")
    for i in range(len(losses)):
        print(f"\tloss in epoch {i} was {losses[i]}")

    save_model(model, path)

    _transform = lambda token, token2ix: torch.tensor(
        [token2ix[token]], dtype=torch.long
    )

    embeddings = model.embedding_dictionary(
        vocab, transform=lambda token: _transform(token, token2ix)
    )

    return embeddings, _transform, token2ix


def _map_class2tokens_to_cbows(class2tokens):
    # this is possible since we don't store a differen't format, we just query it differently later
    return _map_class2tokens_to_n_grams(class2tokens)


def _cbow_context(cbow, as_list=True):
    generator = _cbow_context_generator(cbow)
    return list(generator) if as_list else generator


def _cbow_context_generator(cbow):
    for i in range(0, len(cbow) // 2):
        yield cbow[i]
    # ignore the target (len(cbow) // 2) precisely
    for j in range(len(cbow) // 2 + 1, len(cbow)):
        yield cbow[j]


""" below is all the n-gram code (older) """


def create_embeddings_n_gram(
    class2tokens,
    path,
    _type,
    epochs=NUM_EPOCHS_N_GRAM,
    batch_size=BATCH_SIZE_N_GRAM,
    lr=LEARNING_RATE_N_GRAM,
    use_pretrained=True,
):
    n_grams = _map_class2tokens_to_n_grams(class2tokens)

    vocab = _generate_vocab(n_grams)

    token2ix = {word: i + 1 for i, word in enumerate(vocab)}
    token2ix[PAD] = 0

    losses = []
    loss_function = nn.NLLLoss()

    if use_pretrained:
        try:
            model = load_model(path)
        except:
            print(
                "Faild to load a model from the given path as requested, creating a new one"
            )
            # + 1 for pad
            model = NGramLanguageModeler(len(vocab) + 1, EMBEDDING_DIM, GRAM_SIZE)
    else:
        model = NGramLanguageModeler(len(vocab) + 1, EMBEDDING_DIM, GRAM_SIZE)

    optimizer = optim.SGD(model.parameters(), lr=lr)

    print(f"training n-gram for {_type}...")
    for epoch in range(epochs):
        print(f"\tepoch {epoch}")

        total_loss = 0
        for n_gram in some_items(batch_size, n_grams):
            context = (n_gram[i] for i in range(len(n_gram) - 1))  # generator
            target = n_gram[-1]

            context_idxs = torch.tensor(
                [token2ix[w] for w in context], dtype=torch.long
            )
            # torch accumulates gradient so you need to zero out
            model.zero_grad()
            # probabilities and loss
            log_probs = model(context_idxs)
            loss = loss_function(
                log_probs, torch.tensor([token2ix[target]], dtype=torch.long)
            )
            # gradient descent
            loss.backward()
            optimizer.step()
            # tensor.item() returns the number inside
            total_loss += loss.item()

        losses.append(total_loss)

    print("finished training n-gram based token2vec (from the batch size)")
    for i in range(len(losses)):
        print(f"\tloss in epoch {i} was {losses[i]}")

    save_model(model, path)

    _transform = lambda token, token2ix: torch.tensor(
        [token2ix[token]], dtype=torch.long
    )

    embeddings = model.embedding_dictionary(
        vocab, transform=lambda token: _transform(token, token2ix)
    )

    return embeddings, _transform, token2ix


"""
creates a massive n-gram dataset that ignores class and instead focuses on words in general
there may be some merit in doing stuff by class? probably not until we get more data
"""


def _map_class2tokens_to_n_grams(class2tokens, n=GRAM_SIZE, as_list=True):
    generated = _map_class2tokens_to_n_grams_generator(class2tokens, n)
    return list(generated) if as_list else generated


def _map_class2tokens_to_n_grams_generator(class2tokens, n):
    for titles in class2tokens.values():
        for title in titles:
            yield from _n_gram_title(title, n, as_list=False)


# a bunch of helpers
# as_tuple will take precedence
def _n_gram_title(title, n, as_list=True):
    generated = _n_gram_title_generator(title, n)
    return list(generated) if as_list else generated


def _n_gram_title_generator(title, n):
    for i in range(len(title) - n + 1):
        yield _n_gram(title, i, n)


def _n_gram(title, i, n, as_list=True, as_tuple=True):
    n_gram = _n_gram_generator(title, i, n)
    return tuple(n_gram) if as_tuple else list(n_gram) if as_list else n_gram


def _n_gram_generator(title, i, n):
    for j in range(i, i + n):
        yield title[j]


""" n gram and its helpers below """


def _generate_vocab(n_grams, as_set=True):
    generated = _generate_vocab_generator(n_grams)
    return set(generated) if as_set else generated


def _generate_vocab_generator(n_grams):
    for n_gram in n_grams:
        for char in n_gram:
            yield char


"""
a limiter on the number of n_grams; will return n grams in a random order if not k is None (all)
no repetitions, items must have length and must be able to be indexed
"""


def some_items(k, items):
    if k is None or k > len(items):
        for item in items:
            yield item
    else:
        # meant for smallish batches! otherwise collisions will mess it up
        send = set()
        while len(send) < k:
            # rand-int is inclusive
            send.add(items[random.randint(0, len(items) - 1)])
        for item in send:
            yield item


if __name__ == "__main__":
    embedding_tuples = init_embeddings()
