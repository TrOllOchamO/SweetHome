#!/bin/dash

sudo apt update -y
sudo apt upgrade -y

sudo apt install wget -y
sudo apt install tree -y
sudo apt install fortune -y
sudo apt install cowsay -y

chmod +x *.sh

./tmux_install.sh
./helix_install.sh
./zsh_install.sh
