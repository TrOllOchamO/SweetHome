#!/bin/dash

sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix -y
sudo apt install xclip xsel -y # for the clipboard

echo '
  theme = "onedark"

  [editor] 
  line-number = "relative"  
  mouse = false

  [editor.file-picker]
  hidden = false

  # [editor.whitespace.render] 
  # space = "all" 
  # tab = "all"
  # newline = "none"
' > ~/.config/helix/config.toml
