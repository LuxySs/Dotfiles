#!/bin/bash

rootdir="${1:-$HOME}"
selected_file="$(fzf --walker-root="$rootdir" --preview "echo {} | rev | cut -d'/' -f1 | rev")"

if [ -z "$selected_file" ]; then
    echo "No file selected. Exiting."
    exit 1
fi

# default to editor
prog=$EDITOR
extension="${selected_file##*.}"

# zathura for pdf
if [ "$extension" = "pdf" ]; then
    prog="zathura"
fi

$prog "${selected_file}"
