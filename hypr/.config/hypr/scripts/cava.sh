#!/bin/bash
#starts cava (if not running) or kills cava (if already running)
# Check if cava is running
if pgrep -x "cava" > /dev/null; then
    # If cava is running, kill it
    pkill cava
else
    # If cava is not running, start it
    alacritty --title cava --command /usr/bin/cava
fi

