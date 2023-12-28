#!/bin/bash 

# directories variables
config_dir="$HOME/.config"

# setup hyprland/hyprpaper config depending on platform
ask_platform () {
    echo "laptop or desktop ?"
    read computer_type
    if [ "${computer_type}" = "laptop" ]; then
        ln -s "$HOME/.config/hypr/laptop_hyprland.conf" "$HOME/.config/hypr/hyprland.conf"
        ln -s "$HOME/.config/hypr/laptop_hyprpaper.conf" "$HOME/.config/hypr/hyprpaper.conf"
    elif [ "${computer_type}" = "desktop" ]; then
        ln -s "$HOME/.config/hypr/desktop_hyprland.conf" "$HOME/.config/hypr/hyprland.conf"
        ln -s "$HOME/.config/hypr/desktop_hyprpaper.conf" "$HOME/.config/hypr/hyprpaper.conf"
    else
        return 1
    fi
}

# ask for platform input
while ! ask_platform; do
   true
done
