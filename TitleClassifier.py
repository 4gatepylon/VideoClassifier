#@author Adriano
# we start initially with a simple classification based on titles
# we will only use the v1 data from the txt file which we classify as weeb or not weeb

# things to try:
# just raw classification
# using something to identify language first
#   for this try: https://pytorch.org/tutorials/intermediate/char_rnn_classification_tutorial.html
# try webscraping

# later I'll try classes for latin music, kpop, shitposts/memes, osu, etcetera...
classes = ["weeb", "miscellaneous"] # 0 -> weeb, 1 -> miscellaneous