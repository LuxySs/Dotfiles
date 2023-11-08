#!/bin/bash

grim -g "$(slurp -o)" $HOME/Pictures/screenshots/$(date +'%s_grim.png')
