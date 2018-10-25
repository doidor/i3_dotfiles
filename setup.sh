add-apt-repository main
add-apt-repository universe
add-apt-repository restricted
add-apt-repository multiverse

apt update

apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings i3 wicd ubuntu-drivers-common mesa-utils mesa-utils-extra compton xorg xserver-xorg nautilus gnome-terminal git git-core zsh fonts-powerline xfe xfe-i18n xfe-themes

mkdir -p ~/.config/i3status/
cp ./i3status_config ~/.config/i3status/config

mkdir /tmp/debs/

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/debs/chrome.deb
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O /tmp/debs/visualstudiocode.deb

dpkg -i /tmp/debs/*.deb
apt install -f -y

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

poweroff --reboot