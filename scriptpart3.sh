#!/bin/bash

last_check(){

last=!`ping -c 4 193.168.81.249| grep -c "4 received"`

if ["$last" == "1"];
then
echo "Link is up"
configure
set interfaces ethernet eth5 ip ospf cost 10
commit
save
exit
else
echo "Link is down"
fi
exit
}
