bind \cs fuzzy_here
bind \ch fuzzy_home

# searches from root by default
function fuzzy_home
  # Run the fuzzy_edit.sh script and store the exit status
  ~/.config/hypr/scripts/fuzzy_edit.sh
end

# pass it an argument to change root
function fuzzy_here
  ~/.config/hypr/scripts/fuzzy_edit.sh $pwd
end

