#!/bin/dash

sudo apt install tmux -y

echo '
  # fix colors problems
  set -g default-terminal "xterm-256color"
  set-option -ga terminal-overrides ",xterm-256color:Tc"

  # fix helix delay on echap key
  set -s escape-time 0

  # fix mouse scroll in terminal
  set -g mouse on 
' > ~/.tmux.conf
