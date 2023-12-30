import os

#home directory ("/" not included)
homedir = os.path.expanduser('~')[1:]
print(homedir)
#list of all themes
all_themes = os.listdir(f"/{homedir}/.config/hypr/conf/themes")
print(all_themes)

#full path of the symlink
syml = os.readlink(f"/{homedir}/.config/hypr/conf/window.conf")
print(syml)

#file name of the theme used
current_theme = os.path.basename(syml)
print(current_theme)

#current theme index in the list
current_theme_index = all_themes.index(current_theme)
print(current_theme_index)

#name of the next theme
if current_theme_index == len(all_themes) - 1:
    next_theme = f"/{homedir}/.config/hypr/conf/themes/{all_themes[0]}"
else:
    next_theme = f"/{homedir}/.config/hypr/conf/themes/{all_themes[current_theme_index + 1]}"
print(next_theme)

#delete current symbolic (linked) file
os.remove(f"/{homedir}/.config/hypr/conf/window.conf")

#create new symbolic link to next_theme
os.symlink(next_theme, f"/{homedir}/.config/hypr/conf/window.conf")

#print(all_themes)
#print(syml)
#print(current_theme)
#print(current_theme_index)
#print(next_theme)
