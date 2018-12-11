#!/usr/bin/env bash

# requirement: ssconvert from gnumeric. installed via brew on osx.

for file in `ls *.gpg`;
do
    echo $file
    x=$file
    y=${x%.*}
    gpg --decrypt $file > $y
    # test=`echo $y | awk -F'[_]' '{print $4}'`
    test=`echo $y | awk -F'[.]' '{print $1}'`
    ssconvert $y $y.csv || exit
    cat $y.csv | cut -d ',' -f2- > $test.csv || exit
    rm $y $y.csv
done

