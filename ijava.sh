#!/bin/bash

apt-get update; apt-get upgrade -y
apt-get install default-jre default-jdk -y
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer -y

#Manual mode.
sudo update-alternatives --config java
sudo nano /etc/environment
JAVA_HOME="path_to_java"
source /etc/environment
echo $JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/jre/bin:$PATH


