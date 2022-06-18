#!/bin/sh

#
# Install
#

set -e

_log() {
    printf "\n ▶ $1\n\n"
}

if [ "$EUID" -e 0 ]; then
    echo "Please run as user: exiting..."; exit
fi

_log "Cloning repository..."

git clone "https://github.com/caretakr/dotfiles.git" ~/.dotfiles

_log "Installing files..."

install -D -m 700 ~/.dotfiles/config/antigen/antigen.zsh ~/.config/antigen
install -D -m 700 ~/.dotfiles/config/antigen/antigenrc ~/.config/antigen


