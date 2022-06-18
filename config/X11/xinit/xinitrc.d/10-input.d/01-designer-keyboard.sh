#!/bin/sh

#
# "Microsoft Keyboard" startup
#

INPUT_NAME="Designer Keyboard"
INPUT_ID="$(xinput list --id-only "keyboard:$INPUT_NAME")"

# Set keymap to US/International
setxkbmap -device "$INPUT_ID" -layout us -variant alt-intl
