### ALIASES ###
# funny garbage
alias siuu="sudo pacman -Syu"
alias sl="ls | rev"

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# vim and emacs
alias v='nvim'
alias vim='nvim'
alias fixvim='sudo rm -rf ~/.local/state/nvim/ && sudo rm -rf ~/.local/state/nvim/'
alias em='/usr/bin/emacs -nw'
alias emacs="emacsclient -c -a 'emacs'"
alias rem="killall emacs || echo 'Emacs server not running'; /usr/bin/emacs --daemon"

# "eza" instead of "ls" & "tree" 
alias ls='eza --color=always'
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing
alias l.='eza -a | egrep "^\."'
alias tree='eza --tree --color'

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
