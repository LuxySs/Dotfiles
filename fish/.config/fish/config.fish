source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish
source ~/.config/fish/keybindings.fish

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

