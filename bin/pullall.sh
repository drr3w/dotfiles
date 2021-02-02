#!/bin/bash

#  pullall.sh:                                  
#                                              
#  Quick and dirty script to pull all git repos in a directory.
#  The only requirement is that the remotes setup in the repos
#  use ssh and not https

TC='\e['

Bold="${TC}1m"    # Bold text only, keep colors
Rst="${TC}0m"     # Reset all coloring and style
Purple="${TC}35m"; 
Green="${TC}32m"; 

for dir in `ls`; do
    if [ -d $dir ]; then
        cd $dir
        if [ -d ".git" ]; then
            git stash || exit
            git checkout master || exit
            echo -e "${Bold}${Purple}$dir:${Rst}"
            git pull
            git checkout - 
            git stash pop
        fi
        cd ..
    fi
done
echo -e "${Bold}${Green}Done!${Rst}"
