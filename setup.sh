#!/bin/bash -ex

# directories variables
config_dir="$HOME/.config"

# setup hyprland/hyprpaper config depending on platform
ask_platform () {
    echo "laptop or desktop ?"
    read computer_type
    if [ "${computer_type}" = "laptop" ]; then
        cp ".config/hypr/laptop_hyprland.conf" ".config/hypr/hyprland.conf"
        cp ".config/hypr/laptop_hyprpaper.conf" ".config/hypr/hyprpaper.conf"
    elif [ "${computer_type}" = "desktop" ]; then
        cp ".config/hypr/desktop_hyprland.conf" ".config/hypr/hyprland.conf"
        cp ".config/hypr/desktop_hyprpaper.conf" ".config/hypr/hyprpaper.conf"
    else
        return 1
    fi
}

# ask for platform input
while ! ask_platform; do
   true
done
