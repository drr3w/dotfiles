#!/bin/bash

<<<<<<< HEAD
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')
ffmpeg -f x11grab -video_size $RES -i :0.0 -i ~/.dotfiles/bin/blurlock/lock.png -filter_complex 'boxblur=5:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2' ~/.dotfiles/bin/blurlock/.tmp/test.png -y
i3lock -i ~/.dotfiles/bin/blurlock/.tmp/test.png
=======
mkdir -p .tmp # -p keeps mkdir from erroring out if the directory already exists

# get the resolution
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')

# generate lock screen image from screenshot
ffmpeg -f x11grab -video_size $RES -i :0.0 -i ~/.dotfiles/bin/blurlock/lock.png -filter_complex 'boxblur=5:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2' ~/.dotfiles/bin/blurlock/.tmp/test.png -y

# lock teh screen and using screenshot 
i3lock -i ~/.dotfiles/bin/blurlock/.tmp/test.png

>>>>>>> linux
rm ~/.dotfiles/bin/blurlock/.tmp/test.png
