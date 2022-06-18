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

_log "Installing ZSH..."

mkdir -p ~/.cache/zsh

_log "Installing Antigen..."

mkdir -p ~/.cache/antigen

install -D -m 700 ~/.dotfiles/config/antigen/antigen.zsh ~/.config/antigen/antigen.zsh
install -D -m 700 ~/.dotfiles/config/antigen/antigenrc ~/.config/antigen/antigenrc

_log "Installing BSPWM..."

install -D -m 700 ~/.dotfiles/config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc

install -D -m 700 ~/.dotfiles/config/bspwm/bspwmrc.d/10-picom.sh ~/.config/bspwm/bspwmrc.d/10-picom.sh
install -D -m 700 ~/.dotfiles/config/bspwm/bspwmrc.d/10-polkit.sh ~/.config/bspwm/bspwmrc.d/10-polkit.sh
install -D -m 700 ~/.dotfiles/config/bspwm/bspwmrc.d/10-sxhkd.sh ~/.config/bspwm/bspwmrc.d/10-sxhkd.sh
install -D -m 700 ~/.dotfiles/config/bspwm/bspwmrc.d/10-xbanish.sh ~/.config/bspwm/bspwmrc.d/10-xbanish.sh
install -D -m 700 ~/.dotfiles/config/bspwm/bspwmrc.d/15-dunst.sh ~/.config/bspwm/bspwmrc.d/15-dunst.sh
install -D -m 700 ~/.dotfiles/config/bspwm/bspwmrc.d/15-polybar.sh ~/.config/bspwm/bspwmrc.d/15-polybar.sh
install -D -m 700 ~/.dotfiles/config/bspwm/bspwmrc.d/20-monitor.sh ~/.config/bspwm/bspwmrc.d/20-monitor.sh

_log "Installing Polybar..."

mkdir -p ~/.local/state

install -D -m 700 ~/.dotfiles/config/polybar/config.ini ~/.config/polybar/config.ini

install -D -m 700 ~/.dotfiles/config/polybar/config.d/colors.ini ~/.config/polybar/config.d/colors.ini

install -D -m 700 ~/.dotfiles/config/polybar/config.d/bars/left.ini ~/.config/polybar/config.d/bars/left.ini
install -D -m 700 ~/.dotfiles/config/polybar/config.d/bars/right.ini ~/.config/polybar/config.d/bars/right.ini

install -D -m 700 ~/.dotfiles/config/polybar/config.d/modules/backlight.ini ~/.config/polybar/config.d/modules/backlight.ini
install -D -m 700 ~/.dotfiles/config/polybar/config.d/modules/battery.ini ~/.config/polybar/config.d/modules/battery.ini
install -D -m 700 ~/.dotfiles/config/polybar/config.d/modules/cpu.ini ~/.config/polybar/config.d/modules/cpu.ini
install -D -m 700 ~/.dotfiles/config/polybar/config.d/modules/date.ini ~/.config/polybar/config.d/modules/date.ini
install -D -m 700 ~/.dotfiles/config/polybar/config.d/modules/memory.ini ~/.config/polybar/config.d/modules/memory.ini
install -D -m 700 ~/.dotfiles/config/polybar/config.d/modules/network.ini ~/.config/polybar/config.d/modules/network.ini
install -D -m 700 ~/.dotfiles/config/polybar/config.d/modules/power.ini ~/.config/polybar/config.d/modules/power.ini
install -D -m 700 ~/.dotfiles/config/polybar/config.d/modules/temperature.ini ~/.config/polybar/config.d/modules/temperature.ini
install -D -m 700 ~/.dotfiles/config/polybar/config.d/modules/workspaces.ini ~/.config/polybar/config.d/modules/workspaces.ini


