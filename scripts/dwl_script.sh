#!/bin/sh

log_file="$HOME/dwl_info"
wallpaper="$HOME/Images/wallhaven-qdgpyd.png"

spawn() {
    if [ "$#" -eq 0 ]; then
        return
    fi
    nohup "$@" 2>/dev/null 1>/dev/null &
}

$HOME/.config/scripts/auto_power_off_laptop_screen.sh

sleep 1

# utils
spawn pipewire
spawn pipewire-pulse # needed for flatpak apps
spawn swaybg -i $wallpaper

# cpu
doas $HOME/.config/scripts/cpupower.sh governor powersave
doas $HOME/.config/scripts/cpupower.sh turbo disable

# autostart
# spawn foot -a "senpai" senpai
# spawn foot -a "toxic" toxic
# spawn foot -a "aerc" aerc

spawn fnott
spawn $HOME/yambar

# logs and statusbar
tee "$log_file"
