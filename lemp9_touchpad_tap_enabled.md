# enabling tapping by default

Create config file in `/etc/X11/xorg.conf.d/` named `40-libinput.conf` and paste this
    
    Section "InputClass"
        Identifier "libinput touchpad catchall"
        Driver "libinput"
        Option "Tapping" "on"
    EndSection
