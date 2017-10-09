apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get install binutils -y
mkdir -p /opt/curl
cd /opt/curl
wget http://curl.haxx.se/download/curl-7.50.2.tar.bz2
tar -xvjf curl-7.50.2.tar.bz2
cd curl-7.50.2
./configure
make
sudo make install
sudo ldconfig


apt-get remove curl -y
cp /usr/local/bin/curl /bin/curl
