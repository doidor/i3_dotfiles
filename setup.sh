#!/bin/bash

DEBS_FOLDER=/tmp/debs

add-apt-repository main
add-apt-repository universe
add-apt-repository restricted
add-apt-repository multiverse

apt update

apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings i3 wicd ubuntu-drivers-common mesa-utils mesa-utils-extra compton xorg xserver-xorg nautilus gnome-terminal git git-core zsh fonts-powerline arandr dconf-cli feh gnome-screenshot scrot

mkdir $DEBS_FOLDER

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O $DEBS_FOLDER/chrome.deb
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O $DEBS_FOLDER/visualstudiocode.deb
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.3-amd64.deb -O $DEBS_FOLDER/slack.deb
wget https://repo.skype.com/latest/skypeforlinux-64.deb -O $DEBS_FOLDER/skype.deb

dpkg -i $DEBS_FOLDER/*.deb
apt install -f -y

poweroff --reboot
