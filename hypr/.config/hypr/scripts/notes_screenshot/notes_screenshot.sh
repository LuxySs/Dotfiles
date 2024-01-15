#!/bin/bash

# $notes_path variable and content of .notes_path.txt include /resources
# extension (.png) is not included in $name

# Read the path from ~/.notes_path
notes_path=$(cat ~/.notes_path.txt)

# Ensure the directory exists
mkdir -p "$notes_path"

# Take a screenshot called screenshot.png in the notes directory
grim -g "$(slurp)" "${notes_path}/screenshot.png"

# Start the terminal with prompt
alacritty --title ask_input --command ~/.config/hypr/scripts/ask_user_input.sh 'file_name ? ' 

# Read the output of ask_user_input.sh (file name)
name=$(cat ~/.user_input.txt)

# Rename the screenshot with the provided name
mv "${notes_path}/screenshot.png" "${notes_path}/${name}.png"

# Puts file_name with [] (for markdown) in copy/paste buffer
echo "![${name}](./resources/${name}.png)" | wl-copy

# Remove if forgot to give it a name
rm "${notes_path}/.png
rm "${notes_path}/ .png"
