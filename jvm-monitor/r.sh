#!/bin/bash


#ARGS="-Djava.rmi.server.hostname=ip -Dcom.sun.management.jmxremote.port=22222 -Dcom.sun.management.jmxremote.ssl=false  -Dcom.sun.management.jmxremote.authenticate=false"


nohup java $ARGS  -jar test.jar > log.txt 2>&1 &

