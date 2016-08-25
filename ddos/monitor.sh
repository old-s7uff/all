#!/bin/bash
if [[ "$1" == '21' ]]; 
then
clear
echo "We Are Monitoring Port 21!"
echo "Logs Will Be Saved At ~/log21.txt"
echo "Wait Some Minutes, Then PRESS CTRL+C and cat ~/log21.txt"
tcpdump -i any port 21 > log21.txt
fi
if [[ "$1" == '22' ]]; 
then
clear
echo "We Are Monitoring Port 22!"
echo "Logs Will Be Saved At ~/log22.txt"
echo "Wait Some Minutes, Then PRESS CTRL+C and cat ~/log22.txt"
tcpdump -i any port 22 > log22.txt
fi
if [[ "$1" == '25' ]]; 
then
clear
echo "We Are Monitoring Port 25!"
echo "Logs Will Be Saved At ~/log25.txt"
echo "Wait Some Minutes, Then PRESS CTRL+C and cat ~/log25.txt"
tcpdump -i any port 25 > log25.txt
fi
if [[ "$1" == '53' ]]; 
then
clear
echo "We Are Monitoring Port 53!"
echo "Logs Will Be Saved At ~/log53.txt"
echo "Wait Some Minutes, Then PRESS CTRL+C and cat ~/log53.txt"
tcpdump -i any port 53 > log53.txt
fi
if [[ "$1" == '80' ]]; 
then
clear
echo "We Are Monitoring Port 80!"
echo "Logs Will Be Saved At ~/log80.txt"
echo "Wait Some Minutes, Then PRESS CTRL+C and cat ~/log80.txt"
tcpdump -i any port 80 > log80.txt
fi
if [[ "$1" == '8080' ]]; 
then
clear
echo "We Are Monitoring Port 8080!"
echo "Logs Will Be Saved At ~/log8080.txt"
echo "Wait Some Minutes, Then PRESS CTRL+C and cat ~/log8080.txt"
tcpdump -i any port 8080 > log8080.txt
fi
if [[ "$1" == '3306' ]]; 
then
clear
echo "We Are Monitoring Port 3306!"
echo "Logs Will Be Saved At ~/log3306.txt"
echo "Wait Some Minutes, Then PRESS CTRL+C and cat ~/log3306.txt"
tcpdump -i any port 3306 > log3306.txt
fi
if [[ "$1" == '443' ]]; 
then
clear
echo "We Are Monitoring Port 443!"
echo "Logs Will Be Saved At ~/log443.txt"
echo "Wait Some Minutes, Then PRESS CTRL+C and cat ~/log443.txt"
tcpdump -i any port 443 > log443.txt
fi
if [[ "$1" == '27015' ]]; 
then
clear
echo "We Are Monitoring Port 27015!"
echo "Logs Will Be Saved At ~/27015.txt"
echo "Wait Some Minutes, Then PRESS CTRL+C and cat ~/27015.txt"
tcpdump -i any port 27015 > log27015.txt
fi
