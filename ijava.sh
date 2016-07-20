#!/bin/bash
apt-get update; apt-get upgrade -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
sudo apt-get install oracle-java8-installer -y
java -version



