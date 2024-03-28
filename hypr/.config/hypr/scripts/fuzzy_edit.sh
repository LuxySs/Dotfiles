#!/bin/bash

rootdir="${1:-$HOME}"
selected_file=$(fzf --walker-root="$rootdir" --preview "echo {} | rev | cut -d'/' -f1 | rev")

if [ -z "$selected_file" ]; then
    echo "No file selected. Exiting."
    exit 0  # Exit with a non-zero exit code to indicate an error
fi

extension="${selected_file##*.}"

# default to editor
prog=$EDITOR

# zathura for pdf
if [ "$extension" = "pdf" ]; then
    prog="zathura"
fi

$prog "$selected_file"
