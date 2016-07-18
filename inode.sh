#!/bin/bash
echo -n "Updating System..."; apt-get update -y  > /dev/null; echo "Done.";
echo -n "Upgrading System..."; apt-get upgrade -y  > /dev/null; echo "Done.";
echo -n "Installing Packs..."; apt-get install -y git libssl-dev openssl nano wget curl > /dev/null; echo "Done.";
echo -n "Installing Packs..."; apt-get install dnsutils build-essential -y  > /dev/null; echo "Done.";
echo -n "Getting Node Source..."; curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -  > /dev/null; echo "Done.";
echo -n "Installing Node..."; apt-get install nodejs -y > /dev/null; echo "Done.";
echo -n "Clear Cache..."; npm cache clean -f  > /dev/null; echo "Done.";
echo -n "Get Node..."; npm install -g n  > /dev/null; echo "Done.";
echo -n "Install Node..."; n 5.9.0  > /dev/null; echo "Done.";
echo -n "Creating A Symlink..."; sudo ln -sf /usr/local/n/versions/node/5.9.0/bin/node /usr/bin/node > /dev/null; echo "Done.";
echo -n "Fixing Node Prefix..."; npm config set prefix /usr/local > /dev/null; echo "Done.";
clear
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "*-*-*-*-*--Node "`node -v`" Installed.--*-*-*-*-***-*-**-*-*"
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
