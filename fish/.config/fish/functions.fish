#### Functions ###
# copy the current directory quickly
function pwdc
  set wd $(pwd)
  echo $wd && wl-copy $wd
end

# launch a fabric module using "fabric {name of the module}"
function fabric
  set module $argv[1] 
  source ~/fabric_stuff/venv/bin/activate.fish
  python ~/.config/fabric/$module/$module.py
end

function fuzzy-edit
  set rootdir $argv[1]
  fzf --walker-root=$rootdir
end
  
function sesh
  ~/.config/hypr/scripts/fuzzy_tmux.sh
end
