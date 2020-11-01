"""
Somewhat simple parser and tokenizer for various models I use throughout the bot.

Unfortunately some of the tokenizer code might be a bit annoying. There is a pre-remove map and filter
before tokenizing and also a post-tokenizing, but it's not well organized and maybe a bit hard to follow.

Next time maybe design for like five minutes idk.
"""

# from youtube thumbnail/image download tutorial
import requests  # to get image from the web
import shutil  # to save it locally

from os import listdir
from os.path import isfile, join

DATA_PATH = (
    "../data/"  # we will read our data from the data folder which is not gitignored
)
FULL_DATA_PATH = DATA_PATH + "full-data/"

ONLY_TITLES_PATH = DATA_PATH + "only-title/"
CLASSES_PATH = ONLY_TITLES_PATH + "classes/"

RAW_FILE = "raw.txt"

PRETRAINED_PATH = "../pretrained/"  # we will store weights after training in a folder

STORE_PATH = "../cache/"  # we will download into the cache folder which is gitignored
THUMBNAIL_STORE_PATH = STORE_PATH + "thumbnails/"

### not intending on using these, but I'm keeping them here in case we want to add later
AUDIO_STORE_PATH = STORE_PATH + "audio/"
VIDEO_STORE_PATH = STORE_PATH + "videos/"
CONFIRMED_STORE_PATH = STORE_PATH + "confirmed/"
### this might be used if you want to do NLP analysis of comments or something like that
### also useful for things like the language distributions which probably won't be used that much
MISCELLANEOUS_STORE_PATH = STORE_PATH + "misc/"

# used for our earliest model that kind of sucks
LANGUAGE_DIST_STORE_PATH = MISCELLANEOUS_STORE_PATH + "language-distributions/"

# storing class : tokenized sentences dict to save on compute (good as we scale with more data too)
TOKEN_MAP_STORE_PATH = MISCELLANEOUS_STORE_PATH + "token-stores/"
TOKEN_MAP_STORE_PATH_CHAR = TOKEN_MAP_STORE_PATH + "by-char/"
TOKEN_MAP_STORE_PATH_PAREN = TOKEN_MAP_STORE_PATH + "by-paren/"

# embeddings that we use as our token2vec for training
EMBEDDING_STORE_PATH = PRETRAINED_PATH + "token-embeddings/"

EMBEDDING_STORE_PATH_CHAR = EMBEDDING_STORE_PATH + "by-char/"  # every char on its own
EMBEDDING_STORE_PATH_PAREN = (
    EMBEDDING_STORE_PATH + "by-paren/"
)  # chinese, japanese, words, parens

EMBEDDING_MODEL_CHAR = EMBEDDING_STORE_PATH_CHAR + "state-dict/"
EMBEDDING_MODEL_PAREN = EMBEDDING_STORE_PATH_PAREN + "state-dict/"

EMBEDDING_MODEL_N_GRAM_CHAR = EMBEDDING_MODEL_CHAR + "n-gram/"
EMBEDDING_MODEL_CBOW_CHAR = EMBEDDING_MODEL_CHAR + "cbow/"
EMBEDDING_MODEL_N_GRAM_PAREN = EMBEDDING_MODEL_PAREN + "n-gram/"
EMBEDDING_MODEL_CBOW_PAREN = EMBEDDING_MODEL_PAREN + "cbow/"

TOKEN_TO_IX_CHAR = EMBEDDING_STORE_PATH_CHAR + "token2ix/"
TOKEN_TO_IX_PAREN = EMBEDDING_STORE_PATH_PAREN + "token2ix/"

### parsing constants
PRE_MAP_IN_STRING = {
    ",": "",
    ".": "",
    "?": "",
    "|": "",
    "~": "",
    '"': "",
    "'": "",
    "・": "",
    "\u3000": "",
    "┃": " ",
    "！": "",
    "。": "",
    "/": " ",
    "-": " ",
}

PRE_MAP_IN_STRING_FOR_TOKEN_BY_CHAR = {
    ",": "",
    ".": "",
    "?": "",
    "|": " ",
    "~": "",
    '"': "",
    "'": "",
    "・": "",
    "\u3000": "",
    "┃": " ",
    "！": "",
    "。": "",
    "/": " ",
    "-": " ",
    ")": " ",
    "(": " ",
    "]": " ",
    "[": " ",
    "}": " ",
    "{": " ",
    "】": " ",
    "【": " ",
    "〕": " ",
    "〔": " ",
    "）": " ",
    "（": " ",
    "」": " ",
    "「": " ",
    "』": " ",
    "『": " ",
}

_CLOSE_PARENS = {
    ")": "(",
    "]": "[",
    "}": "{",
    "】": "【",
    "〕": "〔",
    "）": "（",
    "」": "「",
    "』": "『",
}
# inverted
_OPEN_PARENS = {val: key for key, val in _CLOSE_PARENS.items()}

_SKIP_CHARACTERS = sorted(
    (
        " ",
        "\n",
        "\t",
        '"',
        "'",
        " - ",
        ".",
        ",",
        ";",
        "_",
        " -",
        "- ",
        "一",
        "-",  # questionable!
    ),
    key=lambda char: len(char),
    reverse=True,
)

# here we want characters
_SKIP_CHARACTERS_FOR_CHAR = sorted(
    ("\n", "\t", '"', "'", ".", ",", ";", "_", "一", "-",),  # questionable!
    key=lambda char: len(char),
    reverse=True,
)

_OVERRIDE_REMOVE_TOKENS = {"~", "L", ":", "|", "?", "!"}
_OVERRIDE_REMOVE_CHARS = {
    ")",
    "(",
    "]",
    "[",
    "}",
    "{",
    "】",
    "【",
    "〕",
    "〔",
    "）",
    "（",
    "」",
    "「",
    ",",
    ".",
    "?",
    "|",
    "~",
}


###
### parse/data acquisition code
###

""" parse the v1 dataset raw file, return a list of strings """


def parse_only_title_raw(filename=RAW_FILE, path=ONLY_TITLES_PATH):
    _filename = path + filename
    titles = []
    with open(_filename) as file:
        for _line in file.readlines():
            _, line = _line.split(
                "00,"
            )  # the length of the file is 1979 and this is the only working separator
            title = line.strip("\n").strip(".webm").strip("m4a").strip()
            print(line, title)  # TODO
            titles.append(title)
    return titles


""" parse the v1 datasets that I've cleaned up, each file is a class with the name of the file being the classname """


def parse_only_title_classes(path=CLASSES_PATH):
    classes_to_titles = {
        _class: [] for _class in listdir(path) if isfile(join(path, _class))
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
            print(line)  # TODO
    return titles


""" below are various filters for filtering data """

""" similar to it's older brother below (generate by grouping meaningful groups) """


def tokenized_class_titles_by_char(path=CLASSES_PATH, debug=False):
    class_titles = parse_only_title_classes(path=path)
    maxlen = 0

    class_titles_tokens = {_class: [] for _class in class_titles.keys()}
    for _class, titles in class_titles.items():
        class_titles_tokens[_class] = titles_tokenize_by_char(
            _map_titles(
                _filter_titles(titles),
                pre_map_chars=PRE_MAP_IN_STRING_FOR_TOKEN_BY_CHAR,
            )
        )

    for _, titles in class_titles_tokens.items():
        for title in titles:
            maxlen = max(maxlen, len(title))

    # some "visualization"
    if debug:
        _debug_print(class_titles_tokens)
        print(f"\n max len of any tokenized title was {maxlen}")

    return class_titles_tokens, maxlen


""" equivalent, but for chars, to their older brothers near the bottom of the code... yikes! """


def titles_tokenize_by_char(titles, as_list=True):
    out = map(lambda title: title_tokenize_by_char(title), titles)
    return list(out) if as_list else out


def title_tokenize_by_char(title, as_list=True):
    tokenized = _title_tokenize_by_char(title)
    return list(tokenized) if as_list else tokenized


def _title_tokenize_by_char(title, skip_characters=_SKIP_CHARACTERS_FOR_CHAR):
    i = 0
    while i < len(title):
        skip_match = _skip_match(title, i, skip_characters)
        if not skip_match:
            yield title[i]
        i += skip_match if not skip_match is None else 1


""" generate the tokenized class titles for al the classes and titles which we parse """


def tokenized_class_titles(path=CLASSES_PATH, filter_short=True, debug=False):
    class_titles = parse_only_title_classes(path=path)
    maxlen = 0

    class_titles_tokens = {_class: [] for _class in class_titles.keys()}
    for _class, titles in class_titles.items():
        class_titles_tokens[_class] = titles_tokenize(
            _map_titles(_filter_titles(titles))
        )

    # WARNING! if filter_short this will activate, but it is absolutely essential that they be lists!
    # that is assumed as a precondition
    if filter_short:
        for titles in class_titles_tokens.values():
            for i in range(len(titles)):
                titles[i] = _map_tokens(_filter_tokens(titles[i]))

    for _, titles in class_titles_tokens.items():
        for title in titles:
            maxlen = max(maxlen, len(title))

    # some "visualization"
    if debug:
        _debug_print(class_titles_tokens)
        print(f"\n max len of any tokenized title was {maxlen}")

    return class_titles_tokens, maxlen


""" helper used in both to help provide information if things are bad """


def _debug_print(class_titles_tokens):
    # what are the titles and stuff
    for _class, titles in class_titles_tokens.items():
        for title in titles:
            print(title)
            for token in title:
                print(f"\t{token}")
    print("\n")

    # how much token overlap do we have? let's look at the token count
    tokens = {}
    for titles in class_titles_tokens.values():
        for title in titles:
            for token in title:
                if token in tokens:
                    tokens[token] += 1
                else:
                    tokens[token] = 1
    tokens = sorted(
        [(token, count) for token, count in tokens.items()],
        key=lambda tv: tv[1],
        reverse=False,  # for the print because it's long
    )
    for token, count in tokens:
        print(f"{token} -> {count}")
    print("\n")

    # how many titles do we have per
    for _class, titles in class_titles_tokens.items():
        print(f"{_class} -> {len(titles)}")


""" helper for post-process of tokens after they are created """


def _map_tokens(title, as_list=True, remove_chars=_OVERRIDE_REMOVE_CHARS):
    mapped = map(
        lambda token: "".join(
            map(lambda char: "" if char in remove_chars else char, token)
        ),
        title,
    )
    return list(mapped) if as_list else mapped


def _filter_tokens(title, as_list=True, remove_tokens=_OVERRIDE_REMOVE_TOKENS):
    TOO_SHORT = 2
    filtered = filter(
        lambda token: not (
            len(token) <= TOO_SHORT
            and (token in remove_tokens or not _is_single_character_token(token))
        ),
        title,
    )
    return list(filtered) if as_list else filtered


""" generator of non-empty titles as well as those that have proper parenthesization """


def _map_titles(titles, as_list=True, pre_map_chars=PRE_MAP_IN_STRING):
    mapped = map(
        lambda title: "".join(
            map(
                lambda char: pre_map_chars[char] if char in pre_map_chars else char,
                title,
            )
        ),
        titles,
    )
    return list(mapped) if as_list else mapped


def _filter_titles(titles, as_list=True):
    out = filter(
        lambda title: not (_is_only_whitespace(title) or _has_bad_parens(title)), titles
    )
    return list(out) if as_list else out


def _is_only_whitespace(title, whitespaces=(" ", "\t", "\n")):
    for char in title:
        if char not in whitespaces:
            return False
    return True


# changed to allow for only one level of nesting
def _has_bad_parens(title, close_parens=_CLOSE_PARENS, open_parens=_OPEN_PARENS):
    parens = {paren: 0 for paren in open_parens}
    found = False
    for char in title:
        if char in parens:
            if found:
                return True
            # else
            parens[char] += 1
            found = True
        elif char in close_parens:
            parens[close_parens[char]] -= 1
            p = parens[close_parens[char]]
            # want only one level of nesting honestly
            if p < 0 or p > 1:
                return True
            found = False
    for val in parens.values():
        if val != 0:
            return True
    return False


""" generate all tokenized titles """


def titles_tokenize(titles, as_list=True):
    out = map(lambda title: title_tokenize(title), titles)
    return list(out) if as_list else out


""" 
a generator that will return tokens of title anything in [] {} or () is returned as a complete unit
else split by space if not chinese or japanese (kanji)

the capturing happens only at the first level (i.e. "[[yo]] [spaghe]tti" -> [[yo]], [spaghe], tti)
"""


def title_tokenize(title, as_list=True):
    tokenized = _title_tokenize(title)
    return list(tokenized) if as_list else tokenized


def _title_tokenize(
    title,
    skip_characters=_SKIP_CHARACTERS,
    open_parens=_OPEN_PARENS,
    close_parens=_CLOSE_PARENS,
):
    i = 0
    start = None  # the beginning of this token
    captured = None  # inside some form of parens (will indicate the starting)
    captured_count = 0
    while True:
        if i == len(title):
            if not start is None:
                yield title[start:i]
            break

        skip_match = _skip_match(title, i, skip_characters)
        if skip_match:
            if captured:
                i += 1
            else:
                if not start is None:
                    yield title[start:i]  # this is a string
                    start = None
                i += skip_match
        else:
            char = title[i]

            if captured:
                if char in close_parens and close_parens[char] == captured:
                    captured_count -= 1
                    if captured_count == 0:
                        captured = None
                        # necessary because we may not have a skip after
                        yield title[start : i + 1]  # this is a string
                        start = None

                elif char == captured:
                    captured_count += 1

            else:
                if char in open_parens:
                    if not start is None:
                        yield title[start:i]
                        start = None
                    captured = char
                    captured_count += 1
                    # this should then be caught by the start is None and then start should be i
                if _is_single_character_token(char, avoid=(open_parens, close_parens)):
                    yield char
                elif start is None:
                    start = i
            i += 1


# use ascii values to check if it's a chinese character or japanese character
# https://stackoverflow.com/questions/6088241/is-there-a-way-to-check-whether-unicode-text-is-in-a-certain-language
# https://stackoverflow.com/questions/2856942/how-to-check-if-the-word-is-japanese-or-english-using-php
# https://unicode-table.com/en/#basic-latin
def _is_single_character_token(char, avoid=None):
    # assume utf8 I think
    if len(char) != 1:
        return False

    # kanji
    start = 0x2E80

    # hanzi I think
    # start_hanzi = 0x3400
    end = 0x9FD6

    o = ord(char)
    if not avoid is None:
        for avoid_set in avoid:
            if char in avoid_set:
                return False
    return start <= o and o <= end


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
    r = requests.get(url, stream=True)

    if r.status_code == 200:
        # Set decode_content value to True, otherwise the downloaded image file's size will be zero.
        r.raw.decode_content = True

        with open(filename, "wb") as file:
            shutil.copyfileobj(r.raw, file)
        return filename
    else:
        return None


if __name__ == "__main__":
    #class_titles_tokens, ln = tokenized_class_titles(debug=True)
    #class_titles_tokens, ln = tokenized_class_titles_by_char(debug=True)
    #print(class_titles_tokens)
    pass
