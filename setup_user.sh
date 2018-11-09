#!/bin/bash

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

mkdir -p ~/.config/i3status/
mkdir -p ~/Pictures

cp ./dotfiles/i3status_config ~/.config/i3status/config
cp ./dotfiles/i3_config ~/.config/i3/config
cp ./dotfiles/zshrc ~/.zshrc

# Screen Shots
bindsym Print exec scrot '%Y-%m-%d-%s_screenshot_$wx$h.jpg' -e 'mv $f ~/Pictures/'
bindsym $mod+Print exec gnome-screenshot -i
