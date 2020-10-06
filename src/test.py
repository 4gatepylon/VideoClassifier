from models.classification_lang_detect_model import (
    probability_class_given_lang,
    get_lang,
)

from title_classifier import init_lang_distributions

tests = [
    ("HAPPY 420 Thomas The Tank Engine Weed Remix SnoopDogg", "misc"),
    ("Krewella Surrender The Throne", "misc"),
    (
        "RISE ft. The Glitch Mob, Mako, and The Word Alive Worlds 2018 League of Legends",
        "misc",
    ),
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


def test(tests, classes_to_lang_dists):
    classes = classes_to_lang_dists["classes"].keys()

    # TODO this should be its own method! in models.classification_lang_detect_model
    # and the youtube predictor depends on the title
    correct = 0
    for title, target in tests:
        print("title is {}".format(title))

        # langs = get_lang(title, absolute=False)
        _lang = get_lang(title, absolute=True)
        lang = _lang
        best_class, probability = None, 0
        for _class in classes:
            # class_probability = 0
            class_probability = probability_class_given_lang(
                _class, _lang, classes_to_lang_dists
            )
            # for lang_prob in langs:
            #     lang, lang_probability = lang_prob.lang, lang_prob.prob
            #     class_probability += lang_probability * probability_class_given_lang(_class, lang, classes_to_lang_dists)

            print(
                "probability of {} is {} since languages are {}".format(
                    _class, class_probability, lang
                )
            )

            ### another option here is to try a mean squared error from the distribution
            if class_probability > probability:
                best_class, probability = _class, class_probability

        print(
            "class expected to be {}, while it should be {}\n".format(
                best_class, target
            )
        )
        if target == best_class:
            correct += 1

    print("accuracy was {}".format(correct / len(tests)))


if __name__ == "__main__":
    class2lang_dist = init_lang_distributions()
    test(tests, class2lang_dist)
