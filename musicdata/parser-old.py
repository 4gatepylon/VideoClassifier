# @author Adriano Hernandez
import re

# there are two types of files we can parse: txt files and sql files as are given to us by Alice
txt_filenames = ["v1-data.txt"]
sql_filenames = ["v2-data.sql", "v2-data.sql", "v3-data.sql", "v4-data.sql", "v5-data-2020-02-27.sql"]

PATH = "./musicdata/"

def parse_txt_file(file_name):
    titles = []
    with open(file_name, "r") as f:
        for line in f.readlines():
            # [:-1] removes the final \n from the line
            date, title = line[:-1].split(",",1)

            # strip starting and ending spaces
            while title[0] == " ":
                title = title[1:]
            while title[-1] == " ":
                title = title[:-1]
            print(title)

            titles.append(title)
    
    titles.sort()
    return titles

file_titles = {}

for filename in txt_filenames:
    _filename = PATH + filename
    file_titles[filename] = parse_txt_file(_filename)

