#!/bin/bash

check_net() {

check=`ping -c 4 91.198.10.2 | grep -c "4 received"`

if [ "$check" == "1" ];then
echo  "good"
else
echo "bad"
fi
exit 
}
