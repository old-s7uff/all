#!/bin/bash
if [[ "$@" == 'm 21' ]]; 
then
tcpdump port $2 and '(tcp-syn|tcp-ack)!=0' > log21.txt
fi
if [[ "$@" == 'm 22' ]]; 
then
tcpdump port $2 and '(tcp-syn|tcp-ack)!=0' > log22.txt
fi
if [[ "$@" == 'm 25' ]]; 
then
tcpdump port $2 and '(tcp-syn|tcp-ack)!=0' > log25.txt
fi
if [[ "$@" == 'm 53' ]]; 
then
tcpdump port $2 and '(tcp-syn|tcp-ack)!=0' > log53.txt
fi
if [[ "$@" == 'm 80' ]]; 
then
tcpdump port $2 and '(tcp-syn|tcp-ack)!=0' > log80.txt
fi
if [[ "$@" == 'm 443' ]]; 
then
tcpdump port $2 and '(tcp-syn|tcp-ack)!=0' > log443.txt
fi
if [[ "$@" == 'm 27015' ]]; 
then
tcpdump port $2 and '(tcp-syn|tcp-ack)!=0' > log27015.txt
fi
