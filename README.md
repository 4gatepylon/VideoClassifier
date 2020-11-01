# VideoClassifier
Classifies Videos for Music Box into One a Few Categories. Later might become a shitpost detector if I actually care. It's a good learning project but lame to use (i.e. who wants to ruin the magic of shitposts).

Current classes are obvious from the structure in /data go read it. (Code is flexible to the filesystem).

Currently everything should "work" but it doesn't really work. Training the NN makes loss go up. I'm not sure why. It is a meme.

There is a discord bot which tells you what a video's type is when you run it and do !p (piggybacking off the commonly-used
but Rythm).

# I cut this of short so here are some ideas for the future:

Custom detectors:
1. Rapid changes in volume for shitposts
2. word matching for known words (tohou, japanese common phrases)
3. anime girl thumbnails
4. language of title

I intend to roll out the initial version with only title and maybe thumbnail/audio detection.

# Notes to self:
1. need to logically group classes in token2vec code so that related classes that only appear once or twice can be used to "reward" the optimmizer when it is literally wrong but spiritually right (you know what I mean)
2. implement more NLP models (LSTM, naive RNN, etcetera)
3. implement vision models for youtube thumbnails and along with that you'll need to make the full raw data parser and whatnot
4. consider doing the hardcoded volume-change model, let's avoid video/audio models until the future
5. actually do make some video models (i.e. rnns that use vision and sound or something)
6. implement ensemble, add it to discord bot, make the models module have an args callable interface used by discord bot
7. make use of some pre-trained embeddings or make better embeddings
8. train this damn thing better dude
