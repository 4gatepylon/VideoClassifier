#@author Adriano
# we start initially with a simple classification based on titles
# we will only use the v1 data from the txt file which we classify as weeb or not weeb

# things to try:
# just raw classification
# using something to identify language first
#   for this try: https://pytorch.org/tutorials/intermediate/char_rnn_classification_tutorial.html
# try webscraping


import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

torch.manual_seed(1)

def prepare_sequence(seq, to_ix):
    idxs = [to_ix[w] for w in seq]
    return torch.tensor(idxs, dtype=torch.long)


training_data = [
    ("The dog ate the apple".split(), ["DET", "NN", "V", "DET", "NN"]),
    ("Everybody read that book".split(), ["NN", "V", "DET", "NN"])
]
word_to_ix = {}
for sent, tags in training_data:
    for word in sent:
        if word not in word_to_ix:
            word_to_ix[word] = len(word_to_ix)
tag_to_ix = {"DET": 0, "NN": 1, "V": 2}

char_to_ix = {}
for sent, tags in training_data:
    for word in sent:
        for char in word:
            if char not in char_to_ix:
                char_to_ix[char] = len(char_to_ix)

# These will usually be more like 32 or 64 dimensional.
# We will keep them small, so we can see how the weights change as we train.
CHAR_EMBEDDING_DIM = 3
EMBEDDING_DIM = 6
HIDDEN_DIM = 6
CHAR_HIDDEN_DIM = 1

class LSTMTagger(nn.Module):
    def __init__(self, embedding_dim, char_embedding_dim, hidden_dim, char_hidden_dim, vocab_size, char_size, tagset_size):
        super(LSTMTagger, self).__init__()
        self.hidden_dim = hidden_dim
        self.char_hidden_dim = char_hidden_dim

        total_embedding_dim = embedding_dim + char_hidden_dim

        self.char_embeddings = nn.Embedding(char_size, char_embedding_dim)
        self.char_lstm = nn.LSTM(char_embedding_dim, char_hidden_dim)

        self.embeddings = nn.Embedding(vocab_size, embedding_dim)
        self.lstm = nn.LSTM(total_embedding_dim, hidden_dim)
        self.hidden2tag = nn.Linear(hidden_dim, tagset_size)

    def forward(self, sentence_bundle):
        sentence_ix_c, sentence_ix, offsets = sentence_bundle
        
        # hacky shit
        char_embds = self.char_embeddings(sentence_ix_c)
        chars_out, _ = self.char_lstm(char_embds.view(len(sentence_ix_c), 1, -1))
        offset_chars = []
        for offset in offsets:
            offset_chars.append([chars_out[offset].item()])
        words_chars_out = torch.tensor(offset_chars)
        embds = self.embeddings(sentence_ix)
        embds = torch.cat((embds, words_chars_out), dim=1)

        out, _ = self.lstm(embds.view(len(sentence_ix), 1, -1))
        out = self.hidden2tag(out.view(len(sentence_ix), -1))
        out = F.log_softmax(out, dim=1)
        return out

    
model = LSTMTagger(
    EMBEDDING_DIM, 
    CHAR_EMBEDDING_DIM, 
    HIDDEN_DIM, 
    CHAR_HIDDEN_DIM, 
    len(word_to_ix), 
    len(char_to_ix), 
    len(tag_to_ix)
)
loss_function = nn.NLLLoss()
optimizer = optim.SGD(model.parameters(), lr=0.2)

for epoch in range(300):  # again, normally you would NOT do 300 epochs, it is toy data
    total_loss = 0
    for sentence, tags in training_data:
        # Step 1. Remember that Pytorch accumulates gradients.
        # We need to clear them out before each instance
        model.zero_grad()

        # Step 2. Get our inputs ready for the network, that is, turn them into
        # Tensors of word indices.
        sentence_in = prepare_sequence(sentence, word_to_ix)
        sentence_in_c = prepare_sequence("".join(sentence), char_to_ix)
        targets = prepare_sequence(tags, tag_to_ix)

        offsets = []
        offset = 0
        for word in sentence:
            offsets.append(offset)
            offset += len(word)

        # Step 3. Run our forward pass.
        tag_scores = model((sentence_in_c, sentence_in, offsets))

        # Step 4. Compute the loss, gradients, and update the parameters by
        #  calling optimizer.step()
        loss = loss_function(tag_scores, targets)
        total_loss += loss.item()
        loss.backward()
        optimizer.step()
    print(total_loss)

# See what the scores are after training
with torch.no_grad():
    sentence = training_data[0][0]
    offsets = []
    offset = 0
    for word in sentence:
        offsets.append(offset)
        offset += len(word)
    inputs = prepare_sequence("".join(sentence), char_to_ix), prepare_sequence(sentence, word_to_ix), offsets
    tag_scores = model(inputs)

    # The sentence is "the dog ate the apple".  i,j corresponds to score for tag j
    # for word i. The predicted tag is the maximum scoring tag.
    # Here, we can see the predicted sequence below is 0 1 2 0 1
    # since 0 is index of the maximum value of row 1,
    # 1 is the index of maximum value of row 2, etc.
    # Which is DET NOUN VERB DET NOUN, the correct sequence!
    print(tag_scores)
    print("predict", torch.argmax(tag_scores, dim=1), "should be", prepare_sequence(training_data[0][1], tag_to_ix))


""" misc bullshit """


tests = [
    "HAPPY 420 - Thomas The Tank Engine Weed Remix @SnoopDogg",
    "Krewella - Surrender The Throne",
    "RISE (ft. The Glitch Mob, Mako, and The Word Alive) | Worlds 2018 - League of Legends",
    "Lovesickness [NSF, 2a03]",
    "【東方ボーカル】 「螺旋絶望」 【豚乙女】"
]


# probably not gonna be used too much?
keywords_to_class_lowercase = {
    "東方" : "touhou",
    "【" : "weeb",
    "】" : "weeb",
    "420" : "weed",
    "league of legends" : "LOL",
    "mario" : "mario",
    "sonic" : "sonic",
    "jojo" : "jojo",
    "bizarre adventure" : "jojo",
    "nightcore" : "nightcore",
    "cbt" : "cbt"
}

def keywords_match_title(keywords, title):
    pass