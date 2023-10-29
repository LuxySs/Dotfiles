#!/bin/bash

# Specify the folder where your screenshots are stored
screenshot_folder="/home/lulu/Pictures/screenshots"

# Use ls to list files by modification time in reverse order and select the first one
most_recent_file=$(ls -t "$screenshot_folder" | head -1)

# Output the most recent screenshot
#echo "The most recent screenshot is: $screenshot_folder/$most_recent_file"

# Put it in the clipboard
wl-copy $screenshot_folder/$most_recent_file

