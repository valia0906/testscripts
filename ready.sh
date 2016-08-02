#!/bin/bash

pingstatus="`ping -q -c 4 8.8.8.8 | grep received | awk -F ',' '{print $2}' | awk '{print $1}'`"

if [ "$pingstatus" == "4" ];
then
echo "Good connection" >> /home/nadmin/result.txt

tracestatus="`traceroute -m 1 8.8.8.8 | grep '^ 1' | awk '{print $2}'`"
if [ "$tracestatus" == "10.10.254.1" ];
then
echo "Good connection" >> /home/nadmin/result.txt

else
intstatus="`ping -q -I eth5 -c 4 8.8.8.8 | grep received | awk -F ',' '{print $2}' | awk '{print $1}' `"
if [ "$intstatus" == "4" ];
then

echo "Good connection" >> /home/nadmin/result.txt
configure
set interfaces ethernet eth5 ip ospf cost 10
commit
save

else
configure
set interfaces ethernet eth5 ip ospf cost 115
commit
save

else
echo "Good link" >> /home/nadmin/result.txt

fi
fi
fi
