#!/bin/bash
echo -n "Updating System..."; apt-get update -y  &>/dev/null; echo "Done.";
echo -n "Upgrading System..."; apt-get upgrade -y  &>/dev/null; echo "Done.";
echo -n "Installing Apache..."; apt-get install apache2 -y   &>/dev/null; echo "Done.";
service apache2 start
apt-get install php5 -y
service apache2 restart
apt-get install -y libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-ming php5-ps
apt-get install -y php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl

service apache2 restart
sudo php5enmod mcrypt 
sudo a2enmod rewrite 
service apache2 restart 
sleep 3
clear
mkdir /hostdata/
chmod -R 755 /hostdata/
m='
<Directory /hostdata/>
         Options Indexes FollowSymLinks
         AllowOverride None
         Require all granted
</Directory>
'
echo "$m" >> /etc/apache2/apache2.conf
service apache2 restart

#Installing Mysql.
cd ~/
wget https://raw.githubusercontent.com/systemroot/all/master/mysql.sh
chmod +x ~/mysql.sh
sudo ./mysql.sh
sleep 3
clear

#Installing PhpMyAdmin.
cd ~/
wget https://raw.githubusercontent.com/systemroot/all/master/sqladmin.sh
chmod +x ~/sqladmin.sh
sudo ./sqladmin.sh
sleep 3
clear
rm -Rf ~/iapache.sh
sleep 0.5
clear
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "U'r Vhost Folder Is /hostdata/"
echo "Mysql User : root "
echo "Mysql Passwd : root "
echo "Phpmyadmin : yourdomain/mysql"
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
