#!/bin/bash
if [ "`lsb_release -is`" == "CentOS" ]
#CentOS
then
   mkdir -p /servers/cs
   yum -y install glibc.i686 screen nano unzip ld-linux.so.2 ncompress
   ds='/servers/cs'
   cd $ds
   wget https://cloud.dope-us.com/public.zip
   unzip public.zip
   rm -Rf public.zip
   chmod +x hlds_run
   
elif [ "`lsb_release -is`" == "Ubuntu" ] || [ "`lsb_release -is`" == "Debian" ]
#Ubuntu
then
    apt-get install ia32-libs -y
    mkdir -p /servers/cs
    ds='/servers/cs'
    cd $ds
    wget https://cloud.dope-us.com/public.zip
    unzip public.zip
    rm -Rf public.zip
    chmod +x hlds_run
    
#END
else
    echo "Your System Isn't Supported Sorry."
fi