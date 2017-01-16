#!/bin/bash
if [ "`lsb_release -is`" == "CentOS" ]
#CentOS
then
   yum update -y; yum upgrade -y
   yum install libssl-dev epel-release -y
   yum -y install glibc libstdc++
   yum -y install libgcc.x86_64 libgcc_s.so.1
   mkdir -p /servers/cs
   yum -y install glibc.i686 screen nano unzip ld-linux.so.2 ncompress
   ds='/servers/cs'
   cd $ds
   wget http://193.70.16.250/cs.zip
   unzip cs.zip
   rm -Rf cs.zip
   chmod +x hlds_run
   echo "Work Done"
   echo "Game Dir, /servers/cs/"
   
elif [ "`lsb_release -is`" == "Ubuntu" ] || [ "`lsb_release -is`" == "Debian" ]
#Ubuntu
then
    apt-get install ia32-libs -y
    apt-get install git screen zip unzip libssl-dev build-essential -y
    apt-get install lib32ncurses5 lib32z1 -y
    apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 -y
    mkdir -p /servers/cs
    ds='/servers/cs'
    cd $ds
    wget http://cloud.dope-us.com/public.zip
    unzip public.zip
    rm -Rf public.zip
    chmod +x hlds_run
    
#END
else
    echo "Your System Isn't Supported Sorry."
fi
