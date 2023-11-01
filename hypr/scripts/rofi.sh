#!/bin/bash
#starts cava (if not running) or kills cava (if already running)
# Check if cava is running
if pgrep -x "rofi" > /dev/null; then
    # If cava is running, kill it
    pkill rofi
else
    # If cava is not running, start it
    rofi -show drun
fi

