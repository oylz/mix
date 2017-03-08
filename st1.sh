#!/bin/bash

echo 11
#/etc/init.d/iptables start
echo 22
#sleep 0.1
/sbin/iptables -I INPUT -p tcp --dport 9999 --syn -j DROP
echo 33
