from langdetect import detect
from langdetect.lang_detect_exception import LangDetectException

# from youtube thumbnail/image download tutorial
import requests # to get image from the web
import shutil # to save it locally


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

CLASSES_PATH = "./classes/"

class_files = {
    "misc" : "miscellaneous.txt",
    "weeb" : "weeb.txt",
}

class_titles = {
    _class : parse_file(CLASSES_PATH + class_file) for _class, class_file in class_files.items()
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

# try get thumbnail to do CV on it
# from http://www.youtube.com/watch?v=VIDEOID
# to http://img.youtube.com/vi/VIDEOID/#.jpg
def download_image(url, path):
    # WORKS! will get connection refused, however, if you have blockers on
    #url_original = "http://www.youtube.com/watch?v=LFbhGEiFWk4"
    # url = "https://img.youtube.com/vi/LFbhGEiFWk4/0.jpg" 
    filename = path + url.split("/")[-1]

    # Open the url image, set stream to True, this will return the stream content.
    r = requests.get(url, stream = True)

    # Check if the image was retrieved successfully
    if r.status_code == 200:
        # Set decode_content value to True, otherwise the downloaded image file's size will be zero.
        r.raw.decode_content = True
        
        # Open a local file with wb ( write binary ) permission.
        with open(filename,'wb') as f:
            shutil.copyfileobj(r.raw, f)
            
        return filename
    else:
        return None