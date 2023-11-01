#!/bin/bash

#grim /home/lulu/Pictures/screenshots/$(date +'%s_grim.png')

grim png | wl-copy && wl-paste > /home/lulu/Pictures/screenshots/$(date +'%s_grim.png')

