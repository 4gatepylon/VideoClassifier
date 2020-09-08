""" most basic classifier using the language, makes an assumption of representative sampling of the training data set """

from lang_detect import get_classes_lang_dists, get_lang

from parser import parse_only_title_classes

tests = [
    ("HAPPY 420 Thomas The Tank Engine Weed Remix SnoopDogg", "misc"),
    ("Krewella Surrender The Throne", "misc"),
    ("RISE ft. The Glitch Mob, Mako, and The Word Alive Worlds 2018 League of Legends", "misc"),
    ("Lovesickness", "misc"),
    ("東方ボーカル 螺旋絶望 豚乙女", "weeb"),
    ("Zenmai Koi Tokei (T.E.B Summer Mix) 【Touhou Eurobeat】", "weeb"),
    ("Reol - Gigantic O.T.N -Big Death Edition-	", "weeb"),
    ("東方萃夢想】絶対的一方通行　～ Unreachable Message  『凋叶棕』【Subbed】", "weeb"),
    ("東方Vocal／Acoustic Rock】 空に近い場所 「凋叶棕」", "weeb"),
    ("東方Vocal／Rock】 嘔吐、又。 「凋叶棕」【Subbed】", "weeb"),
    ("【東方Vocal／Rock】 ―丑の三つ―　オールド・モチーフ 「凋叶棕」", "weeb"),
    ("[Touhou Vocal] [RD-Sounds] left behind (spanish & english subtitles)", "weeb"),
    ("東方ボーカル】 「タイド・コラプション」 【凋叶棕】", "weeb"),
    ("【東方ボーカル】 「MERMAiD」 【幽閉サテライト】", "weeb"),
    ("東方ボーカル】 「また会える日まで...」 【TatshMusicCircle】", "weeb"),
    ("【東方Vocal／Rock】 MIST LAKE LOVE 「SOUND HOLIC」", "weeb"),
    ("Sir Pelo Mogolovonio (Underpants) + Original Toby Fox Megalovania", "misc"),
    ("AFRICA and ALL STAR never sounded so good together on the piano", "misc"),
    ("Nero - Promises", "misc"),
    ("[Dubstep] - PIXL - Promises (feat. Nessakay) [Sugar Rush EP]", "misc"),
    ("PIXL - Promises (Ft. Nessakay)", "misc"),
    ("【東方Metal／Dubstep】 Catadioptric 「Jerico's Law」", "weeb"),
    ("[Touhou Vocal] [Buta-Otome] Koishi ni (spanish & english subtitles)", "weeb"),
    ("Crazy Bus Title Screen", "misc"),
]

# initialize lang distributions
classes_to_titles = parse_only_title_classes()
classes = classes_to_titles.keys()
classes_to_lang_dists = get_classes_lang_dists(classes_to_titles)

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

correct = 0
for title, target in tests:
    print("title is {}".format(title))

    langs = get_lang(title, absolute=False)
    best_class, probability = None, 0
    for _class in classes:
        class_probability = 0
        for lang_prob in langs:
            lang, lang_probability = lang_prob.lang, lang_prob.prob
            class_probability += lang_probability * probability_class_given_lang(_class, lang, classes_to_lang_dists)
        
        print("probability of {} is {} since languages are {}".format(_class, class_probability, langs))

        if class_probability > probability:
            best_class, probability = _class, class_probability
    
    print("class expected to be {}, while it should be {}\n".format(best_class, target))
    if target == best_class:
        correct += 1

""" looks like it's right around half the time """
print("accuracy was {}".format(correct / len(tests))) 