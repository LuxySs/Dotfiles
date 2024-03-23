#!/bin/bash

# this script is not done yet

rootdir="${1:-$HOME}"
selected_file=$(fzf --walker-root="$rootdir" --preview "echo {} | rev | cut -d'/' -f1 | rev")
if [ -n "$selected_file" ]; then
    # echo $selected_file
    $EDITOR "$selected_file"
fi
