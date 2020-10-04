"""
simple probabilistic model (no learning) that tries to use an off-the-shelf language detector
to infer which distribution a title was drawn from (where each class is a language distribution)
"""

# will try to use textblob which is a google translate API that is pretty good,
# and if it fails it'll use langdetect which can work offline unlike textblob, but is worse
from langdetect.lang_detect_exception import LangDetectException

from langdetect import detect
from langdetect import detect_langs
# https://github.com/Mimino666/langdetect
from textblob import TextBlob
# https://textblob.readthedocs.io/en/dev/api_reference.html#textblob.blob.BaseBlob.detect_language
from googletrans import Translator
# https://py-googletrans.readthedocs.io/en/latest/

""" stores foreach class p(lang | class), p(class) and also for each lang p(lang) """
def get_classes_lang_dists(classes_to_titles, absolute=False):
    distributions = {
        "distributions" : {},
        "languages" : {None : 0},
        "classes" : {},
    }

    lang_distributions = distributions["languages"]
    dist_distributions = distributions["distributions"]
    class_distributions = distributions["classes"]

    total = 0
    for _class, titles in classes_to_titles.items():
        distribution, class_total = get_class_lang_freq_dict(titles, absolute=absolute)

        # update counts for each lang and change the freq dict to a distribution dict
        for lang, amount in distribution.items():
            if lang in lang_distributions:
                lang_distributions[lang] += amount
            else:
                lang_distributions[lang] = amount
            
            distribution[lang] /= class_total

        # update the total # of samples so we can use it to calculate p(class) and p(lang)
        total += class_total

        dist_distributions[_class] = distribution
        class_distributions[_class] = class_total

    for _class in class_distributions.keys():
        class_distributions[_class] /= total
    for lang in lang_distributions.keys():
        lang_distributions[lang] /= total
    
    return distributions

""" get the language freq map of a certain, absolute will += 1 for most likely, but no absolute will += each likelihood """
def get_class_lang_freq_dict(titles, absolute=False):
    langs = {None : 0}
    total = 0

    if absolute:
        for title in titles:
            try:
                lang = _get_lang_absolute(title)
                if lang in langs:
                    langs[lang] += 1
                else:
                    langs[lang] = 1
                total += 1
            except LangDetectException as e:
                if "No features in text" in str(e):
                    langs[None] += 1
                    total += 1
                else:
                    raise e
    else:
        for title in titles:
            try:
                possible_langs = _get_langs_not_absolute(title)
                for lang_prob in possible_langs:
                    lang, probability = lang_prob.lang, lang_prob.prob
                    if lang in langs:
                        langs[lang] += probability
                    else:
                        langs[lang] = probability
                    total += 1
            except LangDetectException as e:
                if "No features in text" in str(e):
                    langs[None] += 1
                    total += 1
                else:
                    raise e
    return langs, total

""" return the language of a title, absolute has the same meaning as above"""
def get_lang(title, absolute=True):
    if absolute:
        return _get_lang_absolute(title)
    else:
        return _get_langs_not_absolute(title)

""" helper method for get_lang """
def _get_lang_absolute(title):
    ### gonna wanna add google api
    try:
        b = TextBlob(title)
        return b.detect_language()
    except:
        try:
            return detect(title)
        except LangDetectException as e:
            if "No features in text" in str(e):
                return None
            else:
                raise e

""" helper method for get_lang """
def _get_langs_not_absolute(title):
    ### gonna wanna add blob and google API
    try:
        return detect_langs(title)
    except LangDetectException as e:
        if "No features in text" in str(e):
            return None
        else:
            raise e