#@author Adriano

# ideas:
# running average of each frame CNN
# RNN of CNN
# rnn of CNN output
# the thumbnail
# the sound
# the title
# text search classification with a webscraper

import torch
model = torch.hub.load('pytorch/vision:v0.5.0', 'resnet18', pretrained=True)