#!/bin/bash



rm ./store-master1/* -rf
rm ./store-slave2/* -rf


nohup ./bin/mqbroker -c broker1-master.conf > ./b1m.log  2>&1 &
nohup ./bin/mqbroker -c broker2-slave.conf > ./b2s.log 2>&1 &
