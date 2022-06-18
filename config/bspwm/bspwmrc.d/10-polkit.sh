#!/bin/sh

#
# polkit startup
#

if pgrep -x polkit-gnome-au >/dev/null; then
    killall polkit-gnome-authentication-agent-1 >/dev/null

    while pgrep -x polkit-gnome-au >/dev/null; do sleep 1; done
fi

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
