#!/bin/sh
#
# Executed by startx (run the WM from here)
#

# Source the whole xinitrc.d dir
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Required for various newer GTK-based apps (some require value 'GNOME')
export XDG_CURRENT_DESKTOP="i3"

# Debug logging
#exec /usr/bin/i3 -V >> ~/i3log-$(date +'%FT%k:%M:%S') 2>&1
exec /usr/bin/i3
