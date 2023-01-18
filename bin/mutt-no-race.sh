#!/bin/sh

# This script is pointed to in .mailcap and is used to open html emails in a browser.
# It solves an issue on macos where the temp file mutt creates is deleted before
# it can be opened in a browser.

file="$1"
tmpfile="$(mktemp).html"
cp "$file" "$tmpfile"
echo $tmpfile
open -a firefox $tmpfile
