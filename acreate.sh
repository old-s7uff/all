#!/bin/bash
#testing.
vf='/hostdata/'
p='public_html'
i='index.html'
if [ "$1" ] 
then
mkdir -p $vf/$1/$p
cat <<EOF > $vf/$1/$p/$i
<html>
<h1><center>DEFAULT INDEX.</h1></center>
<h1><center>Thanks By Using RAW's Project.</h1></center>
<h2><center>Please Delete This Index At /hostdata/$1/$p/$i</h2></center>
<h2><center>And Upload U'r Files At /hostdata/$1/$p
</html>
EOF









rm -Rf ~/acreate.sh
fi
