# VideoClassifier
Classifies Videos for Music Box into One a Few Categories

Tentatively: I'm thinking of Shitpost/Meme, Tohou/Weeb, Legit/Music, Miscellaneous

But mainly this is an alert system for shitposts. I intend to include ensemble learning to combine different sources: the video, the thumbnail, the sound, and the title. I may also write in some custom code as well to help detect shitposts.

Custom detectors:
1. Rapid changes in volume for shitposts
2. word matching for known words (tohou, japanese common phrases)
3. anime girl thumbnails
4. language of title

I intend to roll out the initial version with only title and maybe thumbnail/audio detection.

# Notes to self:
2. need to logically group classes in token2vec code so that related classes that only appear once or twice can be used to "reward" the optimmizer when it is literally wrong but spiritually right (you know what I mean)
3. implement various NLP models (these should probably favor the big tokens)
4. implement various vision models for NLP (these should focus small tokens)
5. implement vision models for youtube thumbnails and along with that you'll need to make the full raw data parser and whatnot
6. consider doing the hardcoded volume-change model, let's avoid video/audio models until the future
7. implement ensemble, add it to discord bot, make the models module have an args callable interface used by discord bot

Make sure to check whether title token n-grams and cbows overlap! If they are too long for a title they should NOT overlap.

Focus on 2.

Please add spoiler tags to the bot!
