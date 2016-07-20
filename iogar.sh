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
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo -e ""
echo -e "Installation Is Done."
echo -e "To Start Server Execute $(tput setaf 1)$(tput bold)./startogar.sh$(tput sgr0)"
echo -e "Game Folder : $(tput setaf 1)$(tput bold)/home/game/ogar/Ogar-unlimited$(tput sgr0)"
echo -e ""
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"

