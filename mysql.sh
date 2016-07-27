#!/bin/bash
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
sleep 2
clear
rm -Rf ~/mysql.sh
