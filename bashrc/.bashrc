#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias wifix='~/.config/hypr/scripts/wifix.sh'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

EDITOR=nvim
export EDITOR

export PATH="$HOME/.emacs.d/bin:$PATH"

. "$HOME/.cargo/env"
