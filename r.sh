#!/bin/bash

SSLOGFILE=$1
echo $SSLOGFILE
#exit

#ARGS="-Dcom.sun.management.jmxremote.port=11111 -Dcom.sun.management.jmxremote.ssl=false  -Dcom.sun.management.jmxremote.authenticate=false"
nohup java  -jar ss.jar 0 0 0 > $SSLOGFILE 2>&1 &

