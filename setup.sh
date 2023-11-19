#!/bin/bash -e

#config_dir="$HOME/.config"
#dotfiles_dir="$HOME/Dotfiles"
#backup_dir="$HOME/backup_dot_config"

config_dir="$HOME/test_config"
dotfiles_dir="$HOME/test_clone"
backup_dir="$HOME/backup_dot_config"

#function to do stuff depending on platform
ask_platform () {
    echo "laptop or desktop ?"
    read computer_type
    if [ "${computer_type}" = "laptop" ]; then
        cp "${dotfiles_dir}/hypr/laptop_hyprland.conf" "${dotfiles_dir}/hypr/hyprland.conf"
        cp "${dotfiles_dir}/hypr/laptop_hyprpaper.conf" "${dotfiles_dir}/hypr/hyprpaper.conf"
    elif [ "${computer_type}" = "desktop" ]; then
        cp "${dotfiles_dir}/hypr/desktop_hyprland.conf" "${dotfiles_dir}/hypr/hyprland.conf"
        cp "${dotfiles_dir}/hypr/desktop_hyprpaper.conf" "${dotfiles_dir}/hypr/hyprpaper.conf"
    else
        return 1
    fi
}

# ask for platform input
while ! ask_platform; do
   true
done

rm -rf "${backup_dir}" # make sure that it's empty before backing up
mkdir "${backup_dir}" # create backup directory

#move previous configs to backup directory
for f in alacritty cava fish hypr neofetch rofi starship.toml waybar wlogout; do
    [[ -d "${config_dir}/${f}" || -f "${config_dir}/${f}" ]] && mv "${config_dir}/${f}" "${backup_dir}"
    ln -s "${dotfiles_dir}/${f}" "${config_dir}/${f}"
done
