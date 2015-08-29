#!/usr/bin.env python

from commands import getoutput as getoutput
import re

regex = r'.*rc\n'


files = getoutput("ls")
print "files: %s %s" % (files,type(files))

rc_files = re.findall(regex, files, re.IGNORECASE)
print rc_files
for file in rc_files:
    file = file.strip('\n')
    result = getoutput("ln -s %s ~/.%s") % (file, file)



