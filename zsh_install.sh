#!/bin/dash

sudo apt install zsh -y
chsh -s $(which zsh)  # set zsh as default shell
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" 

# install theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
