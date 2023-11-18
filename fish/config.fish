if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

set -g fish_greeting #set to None (greeting message)

set -gx EDITOR vim

# alisases
alias siuu="sudo pacman -Syu"
alias wifix="~/Dotfiles/hypr/scripts/wifix.sh"
alias emacs="emacs -a '' -c"
