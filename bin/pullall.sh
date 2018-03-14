#!/bin/bash

#  pullall.sh:                                  
#                                              
#  Quick and dirty script to pull all git repos in a directory.
#  The only requirement is that the remotes setup in the repos
#  use ssh and not https

TC='\e['

Bold="${TC}1m"    # Bold text only, keep colors
Rst="${TC}0m"     # Reset all coloring and style
Yellow="${TC}34m"; 

for dir in `ls`; do
    if [ -d $dir ]; then
        cd $dir
        if [ -d ".git" ]; then
            echo -e "${Bold}${Yellow}$dir:${Rst}"
            git pull
        fi
        cd ..
    fi
done
