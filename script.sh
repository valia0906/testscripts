#!/bin/bash


$status=`ping -n -c 4 193.169.81.249 | grep -c "1 received"`

if [ "$status" == "1" ]; 
then 
    echo "good connection" > /dev/null
else 
    echo "bad connection" > /dev/null
$configure
$set interfaces ethernet eth5 ip ospf cost 10
$commit
$save
$exit
