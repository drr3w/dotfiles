#!/bin/bash

#  pullall.sh:                                  
#                                              
#  Quick and dirty script to pull all git repos in a directory.
#  The only requirement is that the remotes setup in the repos
#  use ssh and not https

for dir in `find . -maxdepth 1 -type d`; do
    cd $dir
    if [ -d ".git" ]; then
        git pull
        cd ..
    fi
done
