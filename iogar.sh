#!/bin/bash
clear
echo -n "Updating System..."; apt-get update && apt-get upgrade -y &>/dev/null; echo "Done.";
mkdir -p /home/game/ogar/
cd /home/game/ogar/
echo -n "Installing Git..."; apt-get install git -y &>/dev/null; echo "Done.";
echo -n "Downloading Ogar..."; git clone https://github.com/AJS-development/Ogar-unlimited.git &>/dev/null; echo "Done.";
cd Ogar-unlimited/src/
echo -n "Installing Ogar..."; npm install &>/dev/null; echo "Done.";
sleep 5

cat <<EOF > ~/startogar.sh
cd /home/game/ogar/Ogar-unlimited/src/
node index.js
EOF
clear
echo -n "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo -n "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo ""
echo -n "Ogar Is Installed."
echo -n "To Start Server Use ./startogar.sh"
echo -n "To edit files go at /home/game/ogar/Ogar-unlimited/"
echo ""
echo -n "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo -n "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
