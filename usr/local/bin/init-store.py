#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os 
import os.path
import argparse


DIRECTORY_LAYOUT = ["Applications",
    "Music",
    "Movie",
    "Documents",
    "Games",
    "Personal",
    "Repositories",
    "Software/OS"
]

def init(parent, force):
    if not os.path.exists(parent):
        os.makedirs(parent)
    elif len(os.listdir(parent)) > 0 and not force:
        print('the directory is not empty')
        return

    os.chdir(parent)
    for dir in DIRECTORY_LAYOUT:
        if not os.path.exists(dir):
            os.makedirs(dir)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-p', '--path')
    parser.add_argument('-f', '--force', action='store_true')
    args = parser.parse_args()

    path = os.getcwd()
    force = False

    if args.path:
        path = args.path
    if args.force:
        force = True

    init(path, force)


def test():
    if not os.path.exists('/tmp/empty/hello/'):
        os.makedirs('/tmp/empty/hello')
    init('/tmp/empty', True)

if __name__ == '__main__':
    main()
