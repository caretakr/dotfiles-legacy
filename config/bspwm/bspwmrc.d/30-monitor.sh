#!/bin/sh

#
# Monitor startup
#

MONITORS=$(bspc query -M --names)
CONNECTED=$(echo "$MONITORS" | awk 'END{print NR}')

if [ "$CONNECTED" = 1 ]; then
	bspc monitor -d 1 2 3 4 5 6 7 8 9 10
elif [ "$CONNECTED" = 2 ]; then
	PRIMARY=$(echo "$MONITORS" | awk NR==2)
	SECONDARY=$(echo "$MONITORS" | awk NR==1)

	bspc monitor "$PRIMARY" -d 2 3 4 5 6 7 8 9 0
	bspc monitor "$SECONDARY" -d 1
fi
