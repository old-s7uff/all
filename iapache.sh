#!/bin/bash
echo -n "Updating System..."; apt-get update -y > /dev/null; echo "Done.";
echo -n "Upgrading System..."; apt-get upgrade -y > /dev/null; echo "Done.";
echo -n "Installing Apache..."; apt-get install apache2 -y > /dev/null; echo "Done.";
echo -n "Starting Apache..."; service apache2 start > /dev/null; echo "Done.";
echo -n "Installing Php5..."; apt-get install php5 -y > /dev/null; echo "Done.";
sleep 0.5
echo -n "Restarting Apache...; service apache2 restart > /dev/null; echo "Done.";
sleep 0.1
echo -n "Installing Php5 Packs...; apt-get install -y libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-ming php5-ps > /dev/null; echo "Done.";
echo -n "Installing Php5 Packs...; apt-get install -y php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl > /dev/null; echo "Done.";
echo -n "Restarting Apache...; service apache2 restart > /dev/null; echo "Done.";
sleep 0.3
echo -n "Enable Php5EnMod...; sudo php5enmod mcrypt > /dev/null; echo "Done.";
echo -n "Enable Mod_Rewrite...; sudo a2enmod rewrite > /dev/null; echo "Done.";
sleep 0.3
echo -n "Restarting Apache...; service apache2 restart > /dev/null; echo "Done.";
echo -n "Work Done.; rm -Rf ~/iapache.sh > /dev/null; echo "BYE!";
sleep 0.5
