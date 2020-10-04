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

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

torch.manual_seed(1) # TODO probably want to avoid this (only good for tutorial basically) !

GRAM_SIZE = 3 # context size is gram size - 1
EMBEDDING_DIM = 10 # higher means more dimensions stuff can vary on

LEARNING_RATE = 0.001
NUM_EPOCHS = 10

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
def create_embeddings(class2tokens, epochs=NUM_EPOCHS):
    # TODO consider CBOW (and you can also use it to pre-train this or something idk)
    # check tutorial for quick introduction
    def no_params_create_embeddings():
        n_grams = _map_class2tokens_to_n_grams(class2tokens)

        vocab = _generate_vocab(n_grams)
        token2ix = {word: i for i, word in enumerate(vocab)}

        losses = []
        loss_function = nn.NLLLoss()
        model = NGramLanguageModeler(len(vocab), EMBEDDING_DIM, GRAM_SIZE)
        optimizer = optim.SGD(model.parameters(), lr=LEARNING_RATE)

        for epoch in range(10):
            total_loss = 0
            for n_gram in n_grams:
                context = (n_gram[i] for i in range(len(n_gram) - 1)) # generator
                target = n_gram[-1]

                print(context, target)

                # Step 1. Prepare the inputs to be passed to the model (i.e, turn the words
                # into integer indices and wrap them in tensors)
                context_idxs = torch.tensor([token2ix[w] for w in context], dtype=torch.long)

                # Step 2. Recall that torch *accumulates* gradients. Before passing in a
                # new instance, you need to zero out the gradients from the old
                # instance
                model.zero_grad()

                # Step 3. Run the forward pass, getting log probabilities over next
                # words
                log_probs = model(context_idxs)

                # Step 4. Compute your loss function. (Again, Torch wants the target
                # word wrapped in a tensor)
                loss = loss_function(log_probs, torch.tensor([token2ix[target]], dtype=torch.long))

                # Step 5. Do the backward pass and update the gradient
                loss.backward()
                optimizer.step()

                # Get the Python number from a 1-element Tensor by calling tensor.item()
                total_loss += loss.item()
            losses.append(total_loss)
        print("finished training n-gram based token2vec")
        for i in range(len(losses)):
            print(f"\tloss in epoch {i} was {losses[i]}")
        
        # TODO now need to turn it into a pickleable datastructure and return it for rw
    
    return no_params

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
    for len(title) - n): # TODO  i in range(1): for faster
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
    
    def embedding_dictionary(self, tokens, transform=None):
        return {
            token : self.embeddings(token if transform is None else transform(token)) for token in tokens
        }

    def embedding_for(self, token):
        return self.embeddings(token) 

if __name__ == "__main__":
    tokenized_by_char, tokenized_by_parens = init_token_classes()

    class2tokens = tokenized_by_char

    n_grams = _map_class2tokens_to_n_grams(class2tokens)

    vocab = _generate_vocab(n_grams)
    token2ix = {word: i for i, word in enumerate(vocab)}

    losses = []
    loss_function = nn.NLLLoss()
    model = NGramLanguageModeler(len(vocab), EMBEDDING_DIM, GRAM_SIZE)
    optimizer = optim.SGD(model.parameters(), lr=LEARNING_RATE)

    for epoch in range(10):
        total_loss = 0
        for n_gram in n_grams:
            context = (n_gram[i] for i in range(len(n_gram) - 1)) # generator
            target = n_gram[-1]

            print(context, target)

            # Step 1. Prepare the inputs to be passed to the model (i.e, turn the words
            # into integer indices and wrap them in tensors)
            context_idxs = torch.tensor([token2ix[w] for w in context], dtype=torch.long)

            # Step 2. Recall that torch *accumulates* gradients. Before passing in a
            # new instance, you need to zero out the gradients from the old
            # instance
            model.zero_grad()

            # Step 3. Run the forward pass, getting log probabilities over next
            # words
            log_probs = model(context_idxs)

            # Step 4. Compute your loss function. (Again, Torch wants the target
            # word wrapped in a tensor)
            loss = loss_function(log_probs, torch.tensor([token2ix[target]], dtype=torch.long))

            # Step 5. Do the backward pass and update the gradient
            loss.backward()
            optimizer.step()

            # Get the Python number from a 1-element Tensor by calling tensor.item()
            total_loss += loss.item()
        losses.append(total_loss)
    print("finished training n-gram based token2vec")
    for i in range(len(losses)):
        print(f"\tloss in epoch {i} was {losses[i]}")

    # TODO https://pytorch.org/tutorials/beginner/saving_loading_models.html
    embeddings = model.embedding_dictionary(
        vocab, 
        transform=lambda token : torch.tensor([token2ix[token]], dtype=torch.long)
    )

    # TODO SAVE THIS!
    print(embeddings)