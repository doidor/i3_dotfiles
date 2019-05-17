#!/bin/bash

DEBS_FOLDER=/tmp/debs

add-apt-repository main
add-apt-repository universe
add-apt-repository restricted
add-apt-repository multiverse

apt update

apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings i3 wicd ubuntu-drivers-common mesa-utils mesa-utils-extra compton xorg xserver-xorg nautilus gnome-terminal git git-core zsh fonts-powerline arandr dconf-cli feh gnome-screenshot scrot libzen-dev libmediainfo-dev debhelper qtbase5-dev qt5-qmake qt4-linguist-tools libqt5dbus5 libqt5svg5-dev libcrypto++-dev libraw-dev libc-ares-dev libssl-dev libsqlite3-dev zlib1g-dev wget dh-autoreconf cdbs unzip libtool-bin pkg-config qt5-default qttools5-dev-tools libavcodec-dev libavutil-dev libavformat-dev libswscale-dev libmediainfo-dev

mkdir $DEBS_FOLDER

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O $DEBS_FOLDER/chrome.deb
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O $DEBS_FOLDER/visualstudiocode.deb
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.3-amd64.deb -O $DEBS_FOLDER/slack.deb
wget https://repo.skype.com/latest/skypeforlinux-64.deb -O $DEBS_FOLDER/skype.deb
wget https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb -O $DEBS_FOLDER/megasync.deb

dpkg -i $DEBS_FOLDER/*.deb
apt install -f -y

poweroff --reboot
