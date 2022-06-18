#!/bin/sh

#
# "Logitech Wireless Mouse" startup
#

INPUT_NAME="Logitech Wireless Mouse PID:4022"
INPUT_ID="$(xinput list --id-only "pointer:$INPUT_NAME")"

# Set acceleration speed
xinput --set-prop "$INPUT_ID" "libinput Accel Speed" -0.5
