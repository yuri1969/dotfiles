#!/bin/sh
#
# Executed by startx (run the WM from here)
#

# Required for various newer GTK-based apps (some require value 'GNOME')
export XDG_CURRENT_DESKTOP="i3"

# Required for some GTK-based apps
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# Debug logging
#exec i3 -V >> ~/i3log-$(date +'%FT%k:%M:%S') 2>&1
exec i3

