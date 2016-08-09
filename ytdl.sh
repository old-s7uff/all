#!/bin/bash
apt-get update -y; apt-get upgrade -y; clear;
apt-get install youtube-dl -y
clear
sudo apt-get remove -y youtube-dl
sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
clear
sudo chmod a+x /usr/local/bin/youtube-dl
hash -r
apt-mark showauto | xargs sudo apt-get install
rm -Rf ~/ytdl.sh
