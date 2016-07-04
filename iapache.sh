#!/bin/bash
echo -n "Updating System..."; apt-get update -y > /dev/null; echo "Done.";
echo -n "Upgrading System..."; apt-get upgrade -y > /dev/null; echo "Done.";
echo -n "Installing Apache..."; apt-get install apache2 -y > /dev/null; echo "Done.";
clear
echo -n "Starting Apache..."; service apache2 start > /dev/null; echo "Done.";
sleep 1
clear
echo -n "Installing Php5..."; apt-get install php5 -y > /dev/null; echo "Done.";
sleep 2
clear
echo -n "Restarting Apache...; service apache2 restart > /dev/null; echo "Done.";
sleep 1
clear
apt-get install -y libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-ming php5-ps
apt-get install -y php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
service apache2 restart
sleep 1
clear
echo -n "Enable Php5EnMod...; sudo php5enmod mcrypt > /dev/null; echo "Done.";
sleep 1
clear
echo -n "Enable Mod_Rewrite...; sudo a2enmod rewrite > /dev/null; echo "Done.";
sleep 1
clear
echo -n "Restarting Apache...; service apache2 restart > /dev/null; echo "Done.";
clear
echo -n "Work Done.; rm -Rf ~/iapache.sh > /dev/null; echo "BYE!";
sleep 1
