#!/bin/sh

#
# .xinitrc
# 

# disable caps lock by remapping it to ctrl, not necessary on lemp9.
# its done in the firmware

# setxkbmap -option ctrl:nocaps

# Ensure that the D-Bus Communication System is running properly to fix
# Slack, file management, authentication, and other essential system processes

if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi


# turn caps lock off and set it to ctrl, now with the lemp9 the keyboard
# has been remapped in the firmware so this isn't necessary
setxkbmap -option ctrl:nocaps

# Enable palm detection on the trackpad
synclient PalmDetect=1

# This is required for i3 and pycharm to work properly
wmname lg3d

# start i3
exec i3
