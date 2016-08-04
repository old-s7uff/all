#!/bin/bash
if [ "`lsb_release -is`" == "CentOS" ]
then
   mkdir -p /servers/cs
   yum -y install glibc.i686 screen nano unzip ld-linux.so.2 ncompress
   ds='/servers/cs'
   cd $ds
   https://cloud.dope-us.com/public.zip
   unzip public.zip
   rm -Rf public.zip
   chmod +x hlds_run
fi
else
    echo "Your System Isn't Supported Sorry."
fi
