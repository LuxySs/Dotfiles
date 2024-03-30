#!/bin/bash

sesh="$(tmuxifier ls | fzf --layout=reverse --margin=5,10)"

if [ -z "$sesh" ]; then
    echo "No session selected. Exiting."
    exit 1
fi

tmuxifier load-session "${sesh}"
