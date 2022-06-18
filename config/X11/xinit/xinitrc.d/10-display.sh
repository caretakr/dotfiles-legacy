#!/bin/sh

#
# Display startup
#

CONNECTED=$(xrandr -q | awk '/ connected/ {count++} END {print count}')
PRIMARY=$(xrandr -q | awk '/ connected/ {print $1}' | sed -sn 1p)

if [ "$CONNECTED" = 1 ]; then
  xrandr \
    --output "$PRIMARY" --primary --mode 1920x1200 --rate 59.95 --pos 0x0 # \
    # $(xrandr -q | awk '/ disconnected/ {print "--output", $1, "--off"}' | paste -sd ' ')
elif [ "$CONNECTED" = 2 ]; then
  SECONDARY=$(xrandr -q | awk '/ connected/ {print $1}' | sed -sn 2p)

  xrandr \
    --output "$PRIMARY" --primary --mode 1920x1200 --rate 59.95 --pos 0x0 \
    --output "$SECONDARY" --mode 1920x1080 --rate 120 --pos 1920x60 # \
    # $(xrandr -q | awk '/ disconnected/ {print "--output", $1, "--off"}' | paste -sd ' ')
fi

# Turn off bell, set mouse acceleration/threshold, dim screen after 3 minutes and lock 2 minutes later
xset -b m 3 6 s 180 120
