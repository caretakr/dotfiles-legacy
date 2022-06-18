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

_log "Please provide the information below:"

printf "▶ (1/5) Vendor? "; read _STORAGE_DEVICE

if [ ! -b "/dev/$_STORAGE_DEVICE" ]; then
    _log "Vendor MUST BE \"Apple\" or \"Dell\": exiting..."; exit
fi

printf "▶ (1/5) Model? "; read _STORAGE_DEVICE

if [ ! -b "/dev/$_STORAGE_DEVICE" ]; then
    _log "Model MUST BE \"MacBook Pro 9,2\" or \"XPS 9310\": exiting..."; exit
fi