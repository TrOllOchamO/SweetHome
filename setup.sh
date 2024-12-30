#!/bin/dash

sudo apt update -y
sudo apt upgrade -y

sudo apt install build-essential -y
sudo apt install curl -y
sudo apt install wget -y
sudo apt install tree -y
sudo apt install htop -y

chmod +x *.sh

./tmux_install.sh
./helix_install.sh
./zsh_install.sh
./cowsay_install.sh
./keyboard_settings.sh
./zellij_install.sh
