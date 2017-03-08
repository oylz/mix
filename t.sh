#!/bin/bash


ps aux | grep ss.jar  | grep -v grep | awk '{print $2}' | xargs -i -t kill -15 {}

