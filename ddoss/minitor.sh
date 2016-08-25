#!/bin/bash
if [[ "$@" == 'm 21' ]]; 
then
tcpdump -i any port 21 > log21.txt
fi
if [[ "$@" == 'm 22' ]]; 
then
tcpdump -i any port 22 > log22.txt
fi
if [[ "$@" == 'm 25' ]]; 
then
tcpdump -i any port 25 > log25.txt
fi
if [[ "$@" == 'm 53' ]]; 
then
tcpdump -i any port 53 > log53.txt
fi
if [[ "$@" == 'm 80' ]]; 
then
tcpdump -i any port 80 > log80.txt
fi
if [[ "$@" == 'm 443' ]]; 
then
tcpdump -i any port 443 > log443.txt
fi
if [[ "$@" == 'm 27015' ]]; 
then
tcpdump -i any port 27015 > log27015.txt
fi
