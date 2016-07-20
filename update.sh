#!/bin/bash
cd ~/
rm -Rf .raws
git clone https://github.com/systemroot/raws.git &>/dev/null
mv raws/.raws ~/ && rm -Rf ~/raws
chmod +x .raws/* .raws/.*
clear
echo " Update Is Complete !"
rm -Rf ~/update.sh
