#!/usr/bin.env python

######################################################################
#
# shazaam.py: cp my dotfiles into home directory and back up originals 
#
######################################################################

""" TODO:
    - 
"""

from commands import getoutput
import re
import os

rc_regex = r'([a-zA-Z]+rc\n)'

def copy_to_homedir():
    """ Copy dotfile into home directory and back up the originals """
            
    files_to_copy = ['vimrc', 'zshrc', 'tmux.conf', 'inputrc']
    
    




files = getoutput("ls")

rc_files = re.findall(rc_regex, files, re.IGNORECASE)
print rc_files
for file in rc_files:
    file = file.strip('\n')
    result = getoutput("ln -s ~/.dotfiles/%s ~/.%s" % (file,file))
