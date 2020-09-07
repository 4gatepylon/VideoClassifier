from langdetect import detect
from langdetect.lang_detect_exception import LangDetectException

""" assumes valid format per the v1-data.txt """
def parse_file(filename):
    titles = []
    with open(filename) as file:
        for line in file.readlines():
            title = line.strip("\n").strip(".webm").strip("m4a").strip()
            titles.append(title)
    return titles

""" will create a frequency map of the languages present """
def sieve_languages(titles):
    langs = {"unknown" : 0}

    for title in titles:
        print(title)
        try:
            lang = detect(title)
            if lang in langs:
                langs[lang] += 1
            else:
                langs[lang] = 1
        except LangDetectException as e:
            if "No features in text" in str(e):
                langs["unknown"] += 1
            else:
                raise e

    return langs

PATH = "./classes/"

class_files = {
    "misc" : "miscellaneous.txt",
    "weeb" : "weeb.txt",
}

class_titles = {
    _class : parse_file(PATH + class_file) for _class, class_file in class_files.items()
}

languages = {
    _class : sieve_languages(titles) for _class, titles in class_titles.items()
}

print(languages)


tests = [
    "HAPPY 420 - Thomas The Tank Engine Weed Remix @SnoopDogg",
    "Krewella - Surrender The Throne",
    "RISE (ft. The Glitch Mob, Mako, and The Word Alive) | Worlds 2018 - League of Legends",
    "Lovesickness [NSF, 2a03]",
    "【東方ボーカル】 「螺旋絶望」 【豚乙女】"
]