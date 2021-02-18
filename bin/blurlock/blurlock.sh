#!/bin/bash

RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')
ffmpeg -f x11grab -video_size $RES -i :0.0 -i ~/.dotfiles/bin/blurlock/lock.png -filter_complex 'boxblur=5:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2' ~/.dotfiles/bin/blurlock/.tmp/test.png -y
i3lock -i ~/.dotfiles/bin/blurlock/.tmp/test.png
rm ~/.dotfiles/bin/blurlock/.tmp/test.png
