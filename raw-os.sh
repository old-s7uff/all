#!/bin/bash
clear
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "*-*--This Script Is For Ubuntu 14.04 64BIT--*-*-*-*-*-*-*-*-*-**-**"
echo "*-*--For Any Problem Create An Github Issue--*-*-*-*-*-*-*-*-*-*-**"
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "*-*--If your System Is 32BIT Then Please PRESS CTRL+C--*-*-*-*-*-**"
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "Installation Will Start After 30 Sec!"
sleep 30

#a
apt-get update -y
apt-get upgrade -y
apt-get dist-upgrade -y
sudo apt-get install gnome-core -y
sudo apt-get install gnome-desktop-environment -y
apt-get install synaptic -y
apt-get install gparted -y

#themes and apps.
mkdir ~/work
cd ~/work
wget https://github.com/adobe/brackets/releases/download/release-1.7/Brackets.Release.1.7.64-bit.deb
dpkg -i Brackets.Release.1.7.64-bit.deb
sudo add-apt-repository ppa:noobslab/themes -y
sudo add-apt-repository ppa:upubuntu-com/icons -y
sudo apt-get update -y
sudo apt-get install numix-bluish-theme -y
sudo apt-get install superflat-icon-theme -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - -y
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder -y
sudo apt-get update -y
sudo apt-get install simplescreenrecorder -y
sudo apt-get install vlc -y
sudo apt-get install vlc browser-plugin-vlc -y
sed -i 's/geteuid/getppid/' /usr/bin/vlc
apt-get install filezilla -y
apt-get install leafpad -y
apt-get install rar unrar zip unzip curl audacity youtube-dl id3v2 mplayer -y

rm -Rf ~/work
