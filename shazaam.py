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


def backup_file(src):
    """ Copy given filename :src: to :src:.orig """ 
    shutil.copy(os.path.join(HOMEDIR, src), os.path.join(HOMEDIR, src + ".orig")


def copy_to_homedir(src):
    """ Copy dotfile :src: into home directory. """
    shutil.copy(os.path.join(HOMEDIR, src), os.path.join(HOMEDIR, src)

if __name__ == '__main__':
    
    files_to_copy = ['vimrc', 'zshrc', 'tmux.conf', 'inputrc']
    
    for dotfile in files_to_copy:
        if dotfile in HOMEDIR:
            backup_file(dotfile) 
            copy_to_homedir(dotfile)
        else
            copy_to_homedir(dotfile)
