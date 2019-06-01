#!/bin/bash

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

# setup nerd fonts and Hermit
git clone https://github.com/ryanoasis/nerd-fonts.git ~/nerd-fonts
pushd ~/nerd-fonts
./install Hermit
popd

mkdir -p ~/.config/i3status/
mkdir -p ~/Pictures
mkdir -p ~/wallpapers

cp ./dotfiles/i3status_config ~/.config/i3status/config
cp ./dotfiles/i3_config ~/.config/i3/config
cp ./dotfiles/zshrc ~/.zshrc
cp ./dotfiles/terminator_config ~/.config/terminator
cp ./dotfiles/compton.conf ~/.config/

# setup homebrew
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"