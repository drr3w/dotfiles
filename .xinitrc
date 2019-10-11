#!/bin/sh

#
# .xinitrc
# 

# Ensure that the D-Bus Communication System is running properly to fix
# Slack, file management, authentication, and other essential system processes

if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

# set path
export PATH=/span/bin:$PATH

# turn caps lock off and set it to ctrl
setxkbmap -option ctrl:nocaps

# Enable palm detection on the trackpad
synclient PalmDetect=1

# This is required for i3 and pycharm to work properly
wmname LG3D

# start bspwm
exec i3 --shmlog-size=26214400

