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


class Conv1dNet(nn.Module):

    def __init__(self):
        super(Net, self).__init__()
        # 1 input image channel, 6 output channels, 3x3 square convolution
        # kernel
        self.conv1 = nn.Conv1d(1, 6, 3)
        self.conv2 = nn.Conv1d(6, 16, 3)

        self.fc1 = nn.Linear(16 * 6 * 6, 120)  # 6*6 from image dimension
        self.fc2 = nn.Linear(120, 84)
        self.fc3 = nn.Linear(84, 10)

    def forward(self, x):
        # Max pooling over a (2, 2) window
        x = F.max_pool2d(F.relu(self.conv1(x)), (2, 2))
        # If the size is a square you can only specify a single number
        x = F.max_pool2d(F.relu(self.conv2(x)), 2)
        x = x.view(-1, self.num_flat_features(x))
        x = F.relu(self.fc1(x))
        x = F.relu(self.fc2(x))
        x = self.fc3(x)
        return x

    def num_flat_features(self, x):
        size = x.size()[1:]  # all dimensions except the batch dimension
        num_features = 1
        for s in size:
            num_features *= s
        return num_features


net = Net()
print(net)

test_string = "MV] IU(아이유) _ BBIBBI(삐삐)"
test_string_tensor = torch.tensor([ord(char) for char in test_string])
print(test_string_tensor)