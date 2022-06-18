#!/bin/sh

#
# "Logitech Wireless Keyboard" startup
#

INPUT_NAME="Logitech Wireless Keyboard PID:4023"
INPUT_ID="$(xinput list --id-only "keyboard:$INPUT_NAME")"

# Set keymap to US/International
setxkbmap -device "$INPUT_ID" -layout br -variant abnt2
