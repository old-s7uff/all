#!/bin/bash
if [[ "$1" == '21' ]]; 
then
tcpdump -i any port 21 > log21.txt
fi
if [[ "$1" == '22' ]]; 
then
tcpdump -i any port 22 > log22.txt
fi
if [[ "$1" == '25' ]]; 
then
tcpdump -i any port 25 > log25.txt
fi
if [[ "$1" == '53' ]]; 
then
tcpdump -i any port 53 > log53.txt
fi
if [[ "$1" == '80' ]]; 
then
tcpdump -i any port 80 > log80.txt
fi
if [[ "$1" == '443' ]]; 
then
tcpdump -i any port 443 > log443.txt
fi
if [[ "$1" == '27015' ]]; 
then
tcpdump -i any port 27015 > log27015.txt
fi
