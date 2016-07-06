#!/bin/bash
vf='/hostdata/'
p='public_html'
i='index.html'
if [ "$1" ] 
then
mkdir -p $vf/$1/$p
chmod 775 $vf/$1
cat <<EOF > $vf/$1/$p/$i
<html>
<h1><center>DEFAULT INDEX.</h1></center>
<h1><center>Thanks By Using RAW's Project.</h1></center>
<h2><center>Please Delete This Index At /hostdata/$1/$p/$i</h2></center>
<h2><center>And Upload U'r Files At /hostdata/$1/$p
</html>
EOF
cat <<EOF > /etc/apache2/sites-available/$1.conf
<VirtualHost *:80>
   ServerAdmin webmaster@$1
   ServerName $1
   ServerAlias www.$1
   DocumentRoot $vf/$1/$p
   ErrorLog ${APACHE_LOG_DIR}/error.log
   CustomLog ${APACHE_LOG_DIR}/access.log combined
   <Directory $vf/$1/$p>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                allow from all
   </Directory>
</virtualhost>
EOF
sudo a2ensite $1.conf
service apache2 restart
rm -Rf ~/acreate.sh
fi
