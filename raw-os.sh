#!/bin/bash
clear
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* *-**-*-*-*-*-*-*-

apt-get update -y
apt-get upgrade -y
apt-get dist-upgrade -y
sudo apt-get install gnome-core -y
sudo apt-get install gnome-desktop-environment -y
apt-get install synaptic -y
apt-get install gparted -y
mkdir ~/work
cd ~/work
wget https://github.com/adobe/brackets/releases/download/release-1.7/Brackets.Release.1.7.64-bit.deb
dpkg -i Brackets.Release.1.7.64-bit.deb
sudo add-apt-repository ppa:noobslab/themes -y
sudo add-apt-repository ppa:upubuntu-com/icons -y
sudo apt-get update -y
sudo apt-get install numix-bluish-theme -y
sudo apt-get install superflat-icon-theme -y

#Text dev.
cd ~/work
mkdir 1/
cd 1/

cd ~/
rm -Rf ~/work/1/



mkdir sudo/
cd sudo/
apt-get install git nmap nano mate-common yelp-tools -y
git clone https://github.com/mate-desktop/pluma.git
cd pluma/
sudo ./autogen.sh
sudo make
sudo make install
cd ~/
rm -Rf ~/work/sudo/


wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - -y
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y
rm -Rf ~/work
