#!/bin/bash
sudo add-apt-repository ppa:andrei-pozolotin/maven3
sudo apt-get update
sudo apt-get install maven3 -y
sudo ln -s /usr/share/maven3/bin/mvn /usr/bin/mvn
