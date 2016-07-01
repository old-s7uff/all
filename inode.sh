#!/bin/bash
apt-get update; apt-get upgrade -y
apt-get install git libssl-dev openssl nano wget curl build-essential -y
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install nodejs -y
npm cache clean -f
npm install -g n
n 6.0.0
sudo ln -sf /usr/local/n/versions/node/6.0.0/bin/node /usr/bin/node
