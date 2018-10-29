#!/bin/bash

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

mkdir -p ~/.config/i3status/
cp ./dotfiles/i3status_config ~/.config/i3status/config

cp ./dotfiles/i3_config ~/.config/i3/config
