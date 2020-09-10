""" most basic classifier using the language, makes an assumption of representative sampling of the training data set """

from lang_detect import get_classes_lang_dists, get_lang

from parser import parse_only_title_classes
from parser import LANGUAGE_DIST_STORE_PATH as dist_path

### move these into the parser please
from os import listdir
from os.path import isfile, join
from pathlib import Path

import pickle

from datetime import datetime

import json
import urllib

""" Initialize and return the distribution data. """
def init_distributions():
    # initialize lang distributions
    classes_to_titles = parse_only_title_classes()

    #classes_to_lang_dists = get_classes_lang_dists(classes_to_titles, absolute=False)
    classes_to_lang_dists = None
    try:
        to_open_file = dist_path + max(file for file in listdir(dist_path) if isfile(join(dist_path, file)))
        with open(to_open_file, 'rb') as handle:
            classes_to_lang_dists = pickle.load(handle)
            print("found an existing cached distribution")
    except:
        print("did not find a cached distribution... creating a new one")
        classes_to_lang_dists = get_classes_lang_dists(classes_to_titles, absolute=True)
        now = datetime.now()
        
        # will be the same as mkdir -p and won't change directory if already exists
        # very important that the fikename have the dashes - and not the slashes / or it's a dir that doesn't exist
        Path(dist_path).mkdir(parents=True, exist_ok=True)
        to_write_file = dist_path + now.strftime("%m-%d-%Y, %H:%M:%S")

        with open(to_write_file, 'wb') as handle:
            pickle.dump(classes_to_lang_dists, handle, protocol=pickle.HIGHEST_PROTOCOL)
    
    return classes_to_lang_dists

""" Given a youtube url, figure out the title and then use classes distributions to figure it out """
def predict_given_youtube_url(youtube_url, classes_to_lang_dists):
    # more answers: https://stackoverflow.com/questions/8738916/how-to-extract-the-title-of-a-youtube-video-using-python
    # but this is gotten from https://stackoverflow.com/questions/1216029/get-title-from-youtube-videos
    # for some reason no api key gets me error 61 connection refused

    APIKEY = "AIzaSyCTPP-FEJiAqI_FDsbo4jI4bRHaKZE-BJ8"
    # must be in the v= format not sure if you can also do videoid or what, also must not have playlist etc
    VideoID = youtube_url.split("v=")[-1]

    params = {'id': VideoID, 'key': APIKEY,
            'fields': 'items(id,snippet(channelId,title,categoryId),statistics)',
            'part': 'snippet,statistics'}

    params = {'id': VideoID, 'key': APIKEY,
          'fields': 'items(id,snippet(channelId,title,categoryId),statistics)',
          'part': 'snippet,statistics'}

    url = 'https://www.googleapis.com/youtube/v3/videos'

    query_string = urllib.parse.urlencode(params)
    url = url + "?" + query_string

    title = None
    try:
        with urllib.request.urlopen(url) as response:
            response_text = response.read()
            data = json.loads(response_text.decode()) # can use pprint to print it nicely
            title = data['items'][0]['snippet']['title']
    except Exception as e:
        return 'yea nevermind i fuckin crashed fuck this shit look here:\n{}'.format(str(e))
    
    if title is None:
        return "unknown"
    else:
        _lang = get_lang(title)
        best_class, probability = None, 0
        for _class in classes_to_lang_dists["classes"].keys():
            class_probability = probability_class_given_lang(_class, _lang, classes_to_lang_dists)
            if class_probability > probability:
                best_class, probability = _class, class_probability
        return "unknown" if best_class is None else best_class

""" Optional testing! """

tests = [
    ("HAPPY 420 Thomas The Tank Engine Weed Remix SnoopDogg", "misc"),
    ("Krewella Surrender The Throne", "misc"),
    ("RISE ft. The Glitch Mob, Mako, and The Word Alive Worlds 2018 League of Legends", "misc"),
    ("Lovesickness", "misc"),
    ("東方ボーカル 螺旋絶望 豚乙女", "touhou"),
    ("Zenmai Koi Tokei (T.E.B Summer Mix) 【Touhou Eurobeat】", "touhou"),
    ("Reol - Gigantic O.T.N -Big Death Edition-	", "weeb"),
    ("東方萃夢想】絶対的一方通行　～ Unreachable Message  『凋叶棕』【Subbed】", "anime"),
    ("東方Vocal／Acoustic Rock】 空に近い場所 「凋叶棕」", "weeb"),
    ("東方Vocal／Rock】 嘔吐、又。 「凋叶棕」【Subbed】", "weeb"),
    ("【東方Vocal／Rock】 ―丑の三つ―　オールド・モチーフ 「凋叶棕」", "touhou"),
    ("[Touhou Vocal] [RD-Sounds] left behind (spanish & english subtitles)", "touhou"),
    ("東方ボーカル】 「タイド・コラプション」 【凋叶棕】", "touhou"),
    ("【東方ボーカル】 「MERMAiD」 【幽閉サテライト】", "touhou"),
    ("東方ボーカル】 「また会える日まで...」 【TatshMusicCircle】", "touhou"),
    ("【東方Vocal／Rock】 MIST LAKE LOVE 「SOUND HOLIC」", "touhou"),
    ("Sir Pelo Mogolovonio (Underpants) + Original Toby Fox Megalovania", "misc"),
    ("AFRICA and ALL STAR never sounded so good together on the piano", "misc"),
    ("Nero - Promises", "misc"),
    ("[Dubstep] - PIXL - Promises (feat. Nessakay) [Sugar Rush EP]", "misc"),
    ("PIXL - Promises (Ft. Nessakay)", "misc"),
    ("【東方Metal／Dubstep】 Catadioptric 「Jerico's Law」", "touhou"),
    ("[Touhou Vocal] [Buta-Otome] Koishi ni (spanish & english subtitles)", "touhou"),
    ("Crazy Bus Title Screen", "misc"),
    ("[MV] IU(아이유) _ BBIBBI(삐삐).webm", "kpop"),
]

""" probability of a class given a language """
def probability_class_given_lang(_class, lang, distributions):
    # p (class | lang) = p(lang | class) * p(class) / p(lang)
    # p(lang | class) get from the distribution
    # p(class) get from the distribution too (i.e. calculated from the total sizes of each class)

    # p(lang) = sum(p(lang | class) * p(class)) for all classes = # lang_class / # class * # class / # total summed
    # = # lang_class / # total summed over all classes = # total for a lang / # total for all langs
    lang_distributions = distributions["languages"]
    dist_distributions_class = distributions["distributions"][_class]
    class_distributions = distributions["classes"]

    p_lang_given_class = dist_distributions_class[lang] if lang in dist_distributions_class else 0
    p_class = class_distributions[_class] if _class in class_distributions else 0
    p_lang = lang_distributions[lang] if lang in lang_distributions else 0

    if p_lang == 0:
        return 0
    # else
    return p_lang_given_class * p_class / p_lang

def test(tests, classes_to_lang_dists):
    classes = classes_to_lang_dists["classes"].keys()

    correct = 0
    for title, target in tests:
        print("title is {}".format(title))

        #langs = get_lang(title, absolute=False)
        _lang = get_lang(title, absolute=True)
        lang = _lang
        best_class, probability = None, 0
        for _class in classes:
            #class_probability = 0
            class_probability = probability_class_given_lang(_class, _lang, classes_to_lang_dists)
            # for lang_prob in langs:
            #     lang, lang_probability = lang_prob.lang, lang_prob.prob
            #     class_probability += lang_probability * probability_class_given_lang(_class, lang, classes_to_lang_dists)
            
            print("probability of {} is {} since languages are {}".format(_class, class_probability, lang))

            ### another option here is to try a mean squared error from the distribution
            if class_probability > probability:
                best_class, probability = _class, class_probability
        
        print("class expected to be {}, while it should be {}\n".format(best_class, target))
        if target == best_class:
            correct += 1

    print("accuracy was {}".format(correct / len(tests))) 