if status is-interactive
    # Commands to run in interactive sessions can go here
end

### setup starfish prompt ###
starship init fish | source

set -g fish_greeting #set to None (greeting message)

set -gx EDITOR nvim

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

# pacman & yay
alias pacsyu="sudo pacman -Syyu"	# update standard packages
alias yaysua="yay -Sua --noconfirm"	# update AUR packages
alias yaysua="yay -Syu --noconfirm"	# update Standard & AUR packages

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

