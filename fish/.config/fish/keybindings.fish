bind \cs fuzzy_here
bind \ch fuzzy_home

# searches from root by default
function fuzzy_home
  ~/.config/hypr/scripts/fuzzy_edit.sh
end

# pass it an argument to change root (current working directory in this case)
function fuzzy_here
  ~/.config/hypr/scripts/fuzzy_edit.sh . 
end

