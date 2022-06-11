#!/bin/bash

# Modified from:
# https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/bin/tmux-sessionizer

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find ~/ ~/Code ~/Code/misc ~/dotfiles -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

# Create new named session, set path to project path, open in vim
tmux new-session -d -s $selected_name -c $selected
tmux send-keys -t $selected_name "vim ." ENTER
# Create new named window for the terminal, set path to project path
tmux new-window -dt $selected_name -c $selected

# If tmux is not running OR it is running but you're not inside tmux
if [[ -z $tmux_running || -z $TMUX ]]; then
    # TODO: not attaching from terminal automatically
    tmux attach-session -t $selected_name
    exit 0
fi

# If tmux is running but doesn't already have the specified session running
if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux switch-client -t $selected_name
    exit 0
fi

tmux attach-session -t $selected_name
