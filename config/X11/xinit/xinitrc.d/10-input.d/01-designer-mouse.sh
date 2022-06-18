#!/bin/sh

#
# "Designer Mouse" startup
#

INPUT_NAME="Designer Mouse"
INPUT_ID="$(xinput list --id-only "pointer:$INPUT_NAME")"

# Set acceleration speed
xinput --set-prop "$INPUT_ID" "libinput Accel Speed" -0.5
