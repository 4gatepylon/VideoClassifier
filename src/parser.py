# from youtube thumbnail/image download tutorial
import requests # to get image from the web
import shutil # to save it locally

DATA_PATH = "../data/" # we will read our data from the data folder which is not gitignored
FULL_DATA_PATH = DATA_PATH + "full-data/"
ONLY_TITLES_PATH = DATA_PATH + "only-title/"
CLASSES_PATH = DATA_PATH + "only-title/classes/"

RAW_FILE = "raw.txt"
CLASSES_TO_FILES = {
    "misc" : "miscellaneous.txt",
    "weeb" : "weeb.txt",
}

DOWNLOAD_PATH = "../cache/" # we will download into the cache folder which is gitignored
PRE_TRAINED_PATH = "../pretrained/" # we will store weights after training in a folder

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

""" parse the v1 datasets that I've cleaned up, return a map from classes to their titles """
def parse_only_title_classes(classes_to_files=CLASSES_TO_FILES, path=CLASSES_PATH):
    classes_to_titles = {
        classes : [] for classes in classes_to_files.keys()
        }
    for _class, _filename in classes_to_files.items():
        filename = path + _filename
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