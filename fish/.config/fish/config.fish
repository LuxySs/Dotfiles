if status is-interactive
    # Commands to run in interactive sessions can go here
end

### setup starfish prompt ###
starship init fish | source

set -g fish_greeting #set to None (greeting message)

### nvim ###
set -gx EDITOR nvim

### hypr scripts ###
set -x PATH $HOME/.config/hypr/scripts/ $PATH
set -x PATH $HOME/.config/hypr/scripts/notes_screenshot/ $PATH

### Rust ###
set -x PATH $HOME/.cargo/bin $PATH
set -x CARGO_HOME $HOME/.cargo
set -x RUSTUP_HOME $HOME/.rustup


#### Functions ###
function pwdc
    set wd $(pwd) 
    echo $wd && wl-copy $wd
end

### ALIASES ###
# funny garbage
alias siuu="sudo pacman -Syu"

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# vim and emacs
alias vim='nvim'
alias em='/usr/bin/emacs -nw'
alias emacs="emacsclient -c -a 'emacs'"
alias rem="killall emacs || echo 'Emacs server not running'; /usr/bin/emacs --daemon"

# Changing "ls" to "eza"
alias ls='eza --color=always'
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing
alias l.='eza -a | egrep "^\."'

# pacman & paru & yay
alias pacsyu="sudo pacman -Syyu"	# update standard packages
alias parusua="paru -sua"		# update aur packages
alias parusua="paru -syu"		# update standard & aur packages
alias yaysua="yay -sua --noconfirm"	# update aur packages
alias yaysua="yay -syu --noconfirm"	# update standard & aur packages

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# note taking
alias note='~/.config/hypr/scripts/notes_screenshot/setup_resources.sh && vim'
