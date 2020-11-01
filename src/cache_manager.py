from os import listdir
from os.path import isfile, join
from pathlib import Path

import torch

import pickle

from datetime import datetime

""" this is hella reused to just read from cache and write if non-existent computationally expensive data """


def rw_most_recent_from_cache(create, path, _type, with_maxlen=False):
    try:
        to_open_file = path + max(
            file for file in listdir(path) if isfile(join(path, file))
        )
        with open(to_open_file, "rb") as handle:
            out = pickle.load(handle)
            print(f"found an existing cached {_type}")
            return out
    except:
        print(f"did not find a cached {_type}... will create one")
        out, maxlen = create()

        Path(path).mkdir(parents=True, exist_ok=True)
        to_write_file = path + datetime.now().strftime("%m-%d-%Y, %H:%M:%S")

        with open(to_write_file, "wb") as handle:
            pickle.dump(out, handle, protocol=pickle.HIGHEST_PROTOCOL)

        if with_maxlen:
            return out, maxlen
        else:
            return out


""" state_dict/model storage """


def save_model(model, path):
    Path(path).mkdir(parents=True, exist_ok=True)
    to_write_file = path + datetime.now().strftime("%m-%d-%Y, %H:%M:%S")

    torch.save(model, to_write_file)


def load_model(path, name=None):
    # load latest by timestamp if no name otherwise with a name
    to_open_file = (
        path + name
        if name
        else path + max(file for file in listdir(path) if isfile(join(path, file)))
    )
    return torch.load(to_open_file)
