""" most basic classifier using the language, makes an assumption of representative sampling of the training data set """

from classification_lang_detect_model import get_classes_lang_dists

from cache_manager import rw_most_recent_from_cache as rw

from parser import parse_only_title_classes
from parser import LANGUAGE_DIST_STORE_PATH as dist_path

""" Initialize and return the distribution data. """


def init_lang_distributions():
    # initialize lang distributions
    classes_to_titles = parse_only_title_classes()

    create = lambda: get_classes_lang_dists(classes_to_titles, absolute=True)

    return rw(create, dist_path, "language distribution")
