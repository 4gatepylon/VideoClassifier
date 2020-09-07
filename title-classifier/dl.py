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

CONTEXT_SIZE = 2  # 2 words to the left, 2 to the right
EMBEDDING_DIM = 16

raw_text = """We are about to study the idea of a computational process.
Computational processes are abstract beings that inhabit computers.
As they evolve, processes manipulate other abstract things called data.
The evolution of a process is directed by a pattern of rules
called a program. People create programs to direct processes. In effect,
we conjure the spirits of the computer with our spells.""".split()

# By deriving a set from `raw_text`, we deduplicate the array
_vocab = set(raw_text)
vocab_size = len(_vocab)

word_to_ix = {word: i for i, word in enumerate(_vocab)}
data = []
for i in range(2, len(raw_text) - 2):
    context = [raw_text[i - 2], raw_text[i - 1],
               raw_text[i + 1], raw_text[i + 2]]
    target = raw_text[i]
    data.append((context, target))


class CBOW(nn.Module):

    def __init__(self, vocab_size, embedding_dim, context_size):
        super(CBOW, self).__init__()
        self.embeddings = nn.Embedding(vocab_size, embedding_dim)
        self.linear1 = nn.Linear(2 * context_size * embedding_dim, 264)
        self.linear2 = nn.Linear(264, vocab_size)

    def forward(self, inputs):
        embeds = self.embeddings(inputs).view((1, -1))
        out = F.relu(self.linear1(embeds))
        out = self.linear2(out)
        log_probs = F.log_softmax(out, dim=1)
        return log_probs

def make_context_vector(context, word_to_ix):
    idxs = [word_to_ix[w] for w in context]
    return torch.tensor(idxs, dtype=torch.long)

model = CBOW(vocab_size, EMBEDDING_DIM, CONTEXT_SIZE)

loss_function = nn.NLLLoss()
optimizer = optim.SGD(model.parameters(), lr=0.005)

for epoch in range(100):
    total_loss = 0
    for context, target in data:

        context_idxs = torch.tensor(make_context_vector(context, word_to_ix), dtype=torch.long)

        model.zero_grad()
        log_probs = model(context_idxs)

        # Step 4. Compute your loss function. (Again, Torch wants the target
        # word wrapped in a tensor)
        loss = loss_function(log_probs, torch.tensor([word_to_ix[target]], dtype=torch.long))

        # Step 5. Do the backward pass and update the gradient
        loss.backward()
        optimizer.step()

        # Get the Python number from a 1-element Tensor by calling tensor.item()
        total_loss += loss.item()
    print(total_loss)
print("")
for context, target in data:

        context_idxs = torch.tensor(make_context_vector(context, word_to_ix), dtype=torch.long)

        model.zero_grad()
        log_probs = model(context_idxs)
        print("should be", target, word_to_ix[target])
        print("predicts", torch.argmax(log_probs))