#!/bin/sh

#
# Input startup
#

INPUT_DIRECTORY="$HOME/.config/X11/xinit/xinitrc.d/10-input.d"

if [ -d "$INPUT_DIRECTORY" ] ; then
    for f in "$INPUT_DIRECTORY"/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done

    unset f
fi
