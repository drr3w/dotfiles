#!/bin/bash

TC='\e[1;'

Bold="${TC}1m"    # Bold text only, keep colors
Rst="${TC}0m"     # Reset all coloring and style
Red="${TC}31m" 
Purple="${TC}35m"
Green="${TC}34m" 
SECS_IN_MONTH=2592000

current_time=`date +%s`
 
for branch in `git branch -a | egrep -v "(^\*)"`; do
    last_commit_time=`git show --format='%ct' $branch | head -n1`
    time_diff=$((current_time-last_commit_time))
    if (($time_diff  > $SECS_IN_MONTH)); then
        if `git branch --merged $branch`; then
            is_merged="${Green}merged.${Rst}"
        else
            is_merged="${Red}not merged.${Rst}"
        fi
        echo -e "$branch age > 1 month, ${Bold}($is_merged)${Rst}"
    else
        echo "$branch `git show --format='%cr' $branch | head -n1`."
    fi
done


