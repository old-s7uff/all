#!/bin/bash
#short,
ip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
hf="$(/etc/hostname)"
h="$(hostname)"

#Up,
apt-get update -y; clear; apt-get upgrade -y; clear; apt-get dist-upgrade -y; clear; apt-get autoremove -y; clear; echo "System Is UpToDate"

#ask,
echo "Please Write Domain Name: "
read domain
echo mail.$domain > /etc/hostname
echo "Please Go At Your Domain DNS Manager And Create One Sub'Domain"
echo "mail.$domain Pointed to ${ip}"
echo "Other Steps will Start after 30SEC!"
sleep 30
echo "127.0.0.1 localhost $domain mail.$domain" >> /etc/hosts
echo $domain > /etc/mailname
apt-get install postfix postfix-policyd-spf-perl postgrey dovecot-core dovecot-imapd opendkim opendkim-tools -y
clear
postfix stop

