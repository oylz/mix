#!/bin/bash

#sleep 1 check the new process is running
echo st2--11
while true
do
	#C=`ps aux | grep ss.jar | grep -v grep | wc -l`
	C=`lsof -i :9999 | grep LISTEN | wc -l`
	if [  $C -gt 0  ]
	then
		break
	fi
	sleep 0.1
done
echo st2--22
/sbin/iptables -D INPUT -p tcp --dport 9999 --syn -j DROP
#/etc/init.d/iptables stop
echo st2--33



