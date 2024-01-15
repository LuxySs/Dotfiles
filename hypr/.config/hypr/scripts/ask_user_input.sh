#!/bin/bash

# Uses the first argument as prompt
read -rep "${1}" user_input

# Puts result in .user_input.txt
echo "${user_input}" > ~/.user_input.txt
