#!/bin/bash

if [ "`ping -q -c 4 8.8.8.8 | grep received | awk -F ',' '{print $2}'`" ] && [ "`traceroute -m 2 8.8.8.8 | grep '^ 2' | awk '{print $2}'`" ] >> /home/nadmin/result.txt;
then
echo "Good connection" >> /home/nadmin/result.txt

elif [ "`ping -q -I eth5 -c 4 8.8.8.8`" ];
then
echo "Bad connection" >> /home/nadmin/result.txt
configure
set interfaces ethernet eth5 ip ospf cost 115
commit
save

else
echo "Good link" >> /home/nadmin/result.txt
configure
set interfaces ethernet eth5 ip ospf cost 10
commit
save
fi

