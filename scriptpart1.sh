#!/bin/bash

status=`ping -c 4 193.169.81.249| grep -c "4 received"`

if [ "$status" == "1" ]; 
then 
    echo "good connection"
else 
    echo "bad connection"
configure
set interfaces ethernet eth5 ip ospf cost 125
commit
save
exit
fi 
exit
