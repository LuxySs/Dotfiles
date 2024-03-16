#!/bin/bash

# Program name to search for
program_name=$1

# Find the PID of the program
pid=$(pgrep "$program_name")

if [ -z "$pid" ]; then
    echo "Program $program_name is not running."
    exit 1
fi

# Find the terminal associated with the program
terminal=$(pstree -s -p "$pid" | grep -oP '(\w+)-.*?\(\d+\)' | grep -oP '\w+(?=-)')

if [ -z "$terminal" ]; then
    echo "Unable to find terminal for program $program_name."
    exit 1
fi

# Close the terminal window and kill the program
kill -TERM -$terminal
