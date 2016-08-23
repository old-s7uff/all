#!/bin/bash
apt-get update; apt-get upgrade -y
clear
mkdir ~/rar
cd ~/rar
wget http://www.win-rar.com/fileadmin/winrar-versions/rarlinux-x64-5.4.0.tar.gz
tar xfz rarlinux-x64-5.4.0.tar.gz
cd ~/rar/rar
make
make install
clear
rm -Rf ~/rar
#bye.
rm -Rf ~/irar.sh
