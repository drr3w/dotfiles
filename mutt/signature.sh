#!/bin/sh
VERSION=`mutt -v | head -1 | cut -d ' ' -f1-2`

echo "Painstakingly handcrafted, just for you, using $VERSION"
