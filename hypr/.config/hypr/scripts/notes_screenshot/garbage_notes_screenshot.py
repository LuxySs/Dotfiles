#!/sbin/python

import os
from datetime import datetime
from subprocess import run, PIPE
import tkinter as tk
from tkinter import simpledialog

# Read notes_path from file
notes_path_file = os.path.expanduser("~/.notes_path")
with open(notes_path_file, 'r') as file:
    notes_path = file.read().strip()

# Run slurp command
slurp_command = ["slurp"]
slurp_output = run(slurp_command, stdout=PIPE, text=True).stdout.strip()

# Tkinter window to get a name for the screenshot
root = tk.Tk()
root.withdraw()  # Hide the main window

# Prompt user for a name
screenshot_name = simpledialog.askstring("Screenshot Name", "Enter a name for the screenshot:")

# Generate output filename based on the provided name
output_filename = f"{screenshot_name}.png"
output_path = os.path.join(notes_path, output_filename)

# Run grim command
grim_command = ["grim", "-g", slurp_output, output_path]
run(grim_command)

# Destroy Tkinter window after use
root.destroy()
