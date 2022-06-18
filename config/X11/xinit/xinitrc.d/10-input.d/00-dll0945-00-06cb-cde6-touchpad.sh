#!/bin/sh

#
# "DLL0945:00 06CB:CDE6 Touchpad" startup
#

INPUT_NAME="DLL0945:00 06CB:CDE6 Touchpad"
INPUT_ID="$(xinput list --id-only "pointer:$INPUT_NAME")"

# Set tapping, dragging and natural scrolling
xinput --set-prop "$INPUT_ID" "libinput Tapping Enabled" 1
xinput --set-prop "$INPUT_ID" "libinput Tapping Drag Enabled" 0
xinput --set-prop "$INPUT_ID" "libinput Natural Scrolling Enabled" 1
