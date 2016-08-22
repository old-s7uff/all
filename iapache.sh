#!/bin/bash
apt-get update; apt-get upgrade -y
apt-get install apache2 -y
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
apt-get update
apt-get install expect -y

VAR=$(expect -c '
spawn apt-get install mysql-server -y
expect "New password for the MySQL \"root\" user:"
send "root\r"
expect "Repeat password for the MySQL \"root\" user:"
send "root\r"
expect eof
')
echo "$VAR"
apt-get install mysql-client libmysqlclient15-dev -y
clear
/etc/init.d/mysql stop
/etc/init.d/mysql start
sleep 3
clear
php5enmod mcrypt
clear
service apache2 reload
sleep 0.5
clear
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo -e "U'r Vhost Folder Is /hostdata/"
echo -e "Mysql User : root "
echo -e "Mysql Passwd : root "
echo -e "Please Change Mysql Root Passwd"
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
