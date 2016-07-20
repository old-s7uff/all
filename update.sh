#!/bin/bash
rm -Rf ~/.raws/raws
cd ~/.raws/
wget https://raw.githubusercontent.com/systemroot/raws/master/.raws/raws &>/dev/null
chmod +x raws
clear
echo " Update Is Complete !"
