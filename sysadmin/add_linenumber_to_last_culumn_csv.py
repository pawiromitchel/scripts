#!/usr/bin/python

import os, sys

# Open a file
path = "../jobs/transformations/files/input/TODO"
dirs = sorted(os.listdir( path ))

last_number = 0

def add_str_to_lines(f_name, str_to_add, last_number):
    with open(f_name, "r") as f:
        lines = f.readlines()
        for index, line in enumerate(lines):
            last_number = last_number + 1
            lines[index] = line.strip() + (str_to_add + str(last_number)) + "\n"

    with open(f_name, "w") as f:
        for line in lines:
            f.write(line)
    return last_number

# This would print all the files and directories
for file in dirs:
    # print file
    file_name = path + "/" + file
    str_to_add = ";"
    f_name = file_name
    last_number = add_str_to_lines(f_name=f_name, str_to_add=str_to_add, last_number=last_number)

