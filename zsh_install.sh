#!/bin/dash

sudo apt install zsh -y
chsh -s $(which zsh)  # set zsh as default shell
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" 

cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
