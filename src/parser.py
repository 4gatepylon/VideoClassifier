# from youtube thumbnail/image download tutorial
import requests # to get image from the web
import shutil # to save it locally

from os import listdir
from os.path import isfile, join

DATA_PATH = "../data/" # we will read our data from the data folder which is not gitignored
FULL_DATA_PATH = DATA_PATH + "full-data/"

ONLY_TITLES_PATH = DATA_PATH + "only-title/"
CLASSES_PATH = ONLY_TITLES_PATH + "classes/"

RAW_FILE = "raw.txt"

PRETRAINED_PATH = "../pretrained/" # we will store weights after training in a folder

STORE_PATH = "../cache/" # we will download into the cache folder which is gitignored
THUMBNAIL_STORE_PATH = STORE_PATH + "thumbnails/"

### not intending on using these, but I'm keeping them here in case we want to add later
AUDIO_STORE_PATH = STORE_PATH + "audio/"
VIDEO_STORE_PATH = STORE_PATH + "videos/"
CONFIRMED_STORE_PATH = STORE_PATH + "confirmed/"
### this might be used if you want to do NLP analysis of comments or something like that
### also useful for things like the language distributions which probably won't be used that much
MISCELLANEOUS_STORE_PATH = STORE_PATH + "misc/"

LANGUAGE_DIST_STORE_PATH = MISCELLANEOUS_STORE_PATH + "language-distributions/"

### parsing constants
_CLOSE_PARENS = {
    ')' : '(',
    ']' : '[',
    '}' : '{',
    '】' : '【', 
    '〕' : '〔',
    '）' : '（',
}
# inverted
_OPEN_PARENS = {val : key for key, val in _CLOSE_PARENS.items()}

_SKIP_CHARACTERS = sorted((
    " ",
    "\n",
    "\t",
    " - ",
    ".",
    ",",
    ";",
    "_",
), key=lambda char : len(char), reverse=True)

###
### parse/data acquisition code
###

""" parse the v1 dataset raw file, return a list of strings """
def parse_only_title_raw(filename=RAW_FILE, path=ONLY_TITLES_PATH):
    _filename = path + filename
    titles = []
    with open(_filename) as file:
        for _line in file.readlines():
            _, line = _line.split("00,") # the length of the file is 1979 and this is the only working separator
            title = line.strip("\n").strip(".webm").strip("m4a").strip()
            print(line, title)
            titles.append(title)
    return titles

""" parse the v1 datasets that I've cleaned up, each file is a class with the name of the file being the classname """
def parse_only_title_classes(path=CLASSES_PATH):
    classes_to_titles = {
        _class : [] for _class in listdir(path) if isfile(join(path, _class))
        }
    for _class in classes_to_titles.keys():
        filename = path + _class
        titles = classes_to_titles[_class]
        with open(filename) as file:
            for line in file.readlines():
                title = line.strip("\n").strip(".webm").strip("m4a").strip()
                titles.append(title)
    return classes_to_titles

""" parse the v2-v5 datasets raw file, return a list of tuples """
def parse_full_data_raw(filename=RAW_FILE, path=FULL_DATA_PATH):
    _filename = path + filename
    titles = []
    with open(_filename) as file:
        for _line in file.readlines():
            line = _line.split(" ")
            print(line) # TODO
    return titles

""" below are various filters for filtering data """

""" generate the tokenized class titles for al the classes and titles which we parse """
def tokenized_class_titles(path=CLASSES_PATH):
    class_titles = parse_only_title_classes(path=path)

    class_titles_tokens = {_class : [] for _class in class_titles.keys()}
    for _class, titles in class_titles.items():
            class_titles_tokens[_class] = titles_tokenize(filter_titles(titles))

    return class_titles_tokens


""" generator of non-empty titles """
def filter_titles(titles, as_list=True):
    out = filter(lambda title : not (_is_only_whitespace(title) or _has_bad_parens(title)), titles)
    return list(out) if as_list else out

def _is_only_whitespace(title, whitespaces=(" ", "\t", "\n")):
    for char in title:
        if char not in whitespaces:
            return False
    return True

def _has_bad_parens(title, close_parens=_CLOSE_PARENS):
    parens = {
        '(' : 0,
        '[' : 0,
        '{' : 0,
        '【' : 0, 
        '〔' : 0,
        '（': 0,
    }
    for char in title:
        if char in parens:
            parens[char] += 1
        elif char in close_parens:
            parens[close_parens[char]] -= 1
            if parens[close_parens[char]] < 0:
                return True
    for val in parens.values():
        if val != 0:
            return True
    return False

""" generate all tokenized titles """
def titles_tokenize(titles, as_list=True):
    out = map(lambda title : title_tokenize(title), titles)
    return list(out) if as_list else out

""" 
a generator that will return tokens of title anything in [] {} or () is returned as a complete unit
else split by space if not chinese or japanese (kanji)

the capturing happens only at the first level (i.e. "[[yo]] [spaghe]tti" -> [[yo]], [spaghe], tti)
"""
def title_tokenize(title, as_list=True):
    tokenized = _title_tokenize(title)
    return list(tokenized) if as_list else tokenized

def _title_tokenize(title, skip_characters=_SKIP_CHARACTERS, open_parens=_OPEN_PARENS, close_parens=_CLOSE_PARENS):
    i = 0
    start = None # the beginning of this token
    captured = None # inside some form of parens (will indicate the starting)
    captured_count = 0
    while i < len(title):
        skip_match = _skip_match(title, i, skip_characters)
        if skip_match:
            if captured:
                i += 1
            else:
                if start:
                    yield title[start : i] # this is a string
                    start = None
                i += skip_match
        else:
            char = title[i]

            if captured:
                if char in close_parens and close_parens[char] == captured:
                    captured_count -= 1
                    if captured_count == 0:
                        captured = None
                
                elif char == captured:
                    captured_count += 1
            
            elif not captured:
                if char in open_parens:
                    captured = char
                    captured_count += 1
                    # this should then be caught by the not start and then start should be i
            
                if _is_single_character_token(char):
                    yield char
                elif not start:
                    start = i
            i += 1

# use ascii values to check if it's a chinese character or japanese character
# https://stackoverflow.com/questions/6088241/is-there-a-way-to-check-whether-unicode-text-is-in-a-certain-language
# https://stackoverflow.com/questions/2856942/how-to-check-if-the-word-is-japanese-or-english-using-php
# https://unicode-table.com/en/#basic-latin
def _is_single_character_token(char):
    # assume utf8 I think

    # kanji
    start1 = 0x2e80
    end1 = 0x2fe0

    # hanzi I think
    start2 = 0x3400
    end2= 0x9fd6

    o = ord(char)

    return start1 <= o and o <= end1 or start2 <= o and o <= end2

def _skip_match(title, i, skip_characters):
    t = len(title)
    for char in skip_characters:
        l = len(char)
        if t >= i + l and title[i : i + l] == char:
            return l
    return None

""" Download the thumbnail """
def download_image(url, path):
    # from http://www.youtube.com/watch?v=VIDEOID
    # to http://img.youtube.com/vi/VIDEOID/#.jpg where # can be 0,1,2,3... for however many thumbnails there are

    # if you get error connection refused make sure to 
    # 1. use 8.8.8.8 or some other legit DNS
    # 2. unblock any sites that you are blocking in /etc/hosts

    filename = path + url.split("/")[-1]
    r = requests.get(url, stream = True)

    if r.status_code == 200:
        # Set decode_content value to True, otherwise the downloaded image file's size will be zero.
        r.raw.decode_content = True

        with open(filename,'wb') as file:
            shutil.copyfileobj(r.raw, file)
        return filename
    else:
        return None

if __name__ == "__main__":
    class_titles_tokens = tokenized_class_titles()
    for _class, titles in class_titles_tokens.items():
        for title in titles:
            print(title)
            for token in title:
                print(f"\t{token}")
            print("\n")