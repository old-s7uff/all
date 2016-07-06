#!/bin/bash
#testing.
vf='/hostdata/'
p='public_hml'
i='index.html'
if [ "$1" ] 
then
mkdir -p $vf/$1/$p
cat <<EOF > $vf/$1/$p/$i
<html>

</html>
EOF









rm -Rf ~/acreate.sh
fi
