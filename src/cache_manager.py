from os import listdir
from os.path import isfile, join
from pathlib import Path

import pickle

from datetime import datetime

""" this is hella reused to just read from cache and write if non-existent computationally expensive data """
def rw_most_recent_from_cache(create, path, _type):
    try:
        to_open_file = path + max(
            file for file in listdir(path) if isfile(join(path, file))
            )
        with open(to_open_file, 'rb') as handle:
            out = pickle.load(handle)
            print(f"found an existing cached {_type}")
            return out
    except:
        print(f"did not find a cached {_type}... will create one")
        out = create()
        now = datetime.now()

        Path(path).mkdir(parents=True, exist_ok=True)
        to_write_file = path + now.strftime("%m-%d-%Y, %H:%M:%S")

        with open(to_write_file, 'wb') as handle:
            pickle.dump(out, handle, protocol=pickle.HIGHEST_PROTOCOL)
        
        return out