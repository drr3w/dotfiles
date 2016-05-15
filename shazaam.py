#!/usr/bin.env python

######################################################################
#
# shazaam.py: cp my dotfiles into home directory and back up originals 
#
######################################################################

from commands import getoutput
import os
import shutil

HOMEDIR = os.environ['HOME']

def get_dotfiles(src_dir):
    """ Recursively search all directories in :src_dir: and find the dotfiles we want to copy"""
    files_to_copy = []

    for root, dirs, files in os.walk(os.curdir):
        for file in files:
            if ('tmux' in file) or ('rc' in file):
                files_to_copy.append(os.path.abspath(file))
    return files_to_copy


def backup_file(src):
    """ Copy given filename :src: to :src:.orig
        
        TODO: add function to create a random string to append to original filename
    """
    shutil.copy(src, os.path.join(HOMEDIR, src.split('/')[-1] + ".bak"))


def copy_to_homedir(src):
    """ Copy dotfile :src: into home directory. """
    shutil.copy(src, os.path.join(HOMEDIR, src.split('/')[-1]))


if __name__ == '__main__':
    
    files_to_copy = get_dotfiles(os.path.join(HOMEDIR,'.dotfiles')) 

    for dotfile in files_to_copy: 
        if dotfile.split('/')[-1] in os.listdir(os.environ['HOME']):
            backup_file(dotfile)
            copy_to_homedir(dotfile)
        else:
            copy_to_homedir(dotfile)
