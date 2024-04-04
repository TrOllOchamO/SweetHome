#!/bin/dash

sudo apt update
sudo apt upgrade

sudo apt install wget -y
sudo apt install tree -y
sudo apt install fortune -y
sudo apt install cowsay -y

./tmux_install.sh
./helix_install.sh
./zsh_install.sh
