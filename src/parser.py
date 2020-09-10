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
    pass