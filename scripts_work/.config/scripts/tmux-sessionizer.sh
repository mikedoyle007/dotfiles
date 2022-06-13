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

# If tmux is not running
if [[ -z $tmux_running ]]; then
# if [ ! $tmux_running ]; then
    # tmux new-session -s $selected_name -c $selected

    # Create new named session, set path to project path, open in vim
    tmux new-session -ds $selected_name -c $selected
    tmux send-keys -t $selected_name "vim ." ENTER
    # Create new named window for the terminal, set path to project path
    tmux new-window -dt $selected_name -c $selected

    exit 0
fi

# # If there is at least a tmux server running
# # And if you're not inside tmux, then either attach to the session or create it:
if [[ -z $TMUX ]]; then
  # tmux new-session -A -ds $selected_name -c $selected

  # Create new named session, set path to project path, open in vim
  tmux new-session -ds $selected_name -c $selected
  tmux send-keys -t $selected_name "vim ." ENTER
  # Create new named window for the terminal, set path to project path
  tmux new-window -dt $selected_name -c $selected

  exit 0
fi

# If tmux is running but doesn't already have the specified session running
if ! tmux has-session -t=$selected_name 2> /dev/null; then
    # Create new named session, set path to project path, open in vim
    tmux new-session -ds $selected_name -c $selected
    tmux send-keys -t $selected_name "vim ." ENTER
    # Create new named window for the terminal, set path to project path
    tmux new-window -dt $selected_name -c $selected
fi

tmux switch-client -t $selected_name

