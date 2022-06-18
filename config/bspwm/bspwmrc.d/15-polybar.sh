#!/bin/sh

#
# Polybar startup
#

if pgrep -x polybar >/dev/null; then
    killall polybar >/dev/null

    while pgrep -x polybar >/dev/null; do sleep 1; done
fi

if type "xrandr" >/dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top >$XDG_DATA_HOME/polybar/polybar.log 2>&1 & disown
  done
else
  polybar --reload top >$XDG_DATA_HOME/polybar/polybar.log 2>&1 & disown
fi
