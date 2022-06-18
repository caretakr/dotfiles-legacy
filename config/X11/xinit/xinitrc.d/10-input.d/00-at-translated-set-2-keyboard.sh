#!/bin/sh

#
# "AT Translated Set 2 keyboard" startup
#

INPUT_NAME="AT Translated Set 2 keyboard"
INPUT_ID="$(xinput list --id-only "keyboard:$INPUT_NAME")"

# Set keymap to US/International
setxkbmap -device "$INPUT_ID" -layout br -variant abnt2
