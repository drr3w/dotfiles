#!/usr/bin.env python

"""Run this script to symlink the rc files in the dotfiles repo into the users home directory.

    TODO:
        - move files into an rc file directory so it'll be easier to deal with the files
        -
"""
from commands import getoutput as getoutput

files = getoutput("ls").split("\n")
print "files: %s" % files

for file in files:
    print "calling getoutput('ln -s %s ~/.%s')..." % (file, file)
    #result = getouput("ln -s %s ~/.%s") % (file, file)



