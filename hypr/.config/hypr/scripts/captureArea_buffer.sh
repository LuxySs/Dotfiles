#!/bin/bash
slurp | grim -g - - | wl-copy && wl-paste > $(xdg-user-dir PICTURES)/$(date +'%Y-%m-%d-%H%M%S_grim.png')
