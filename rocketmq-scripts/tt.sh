#!/bin/bash
date

ps aux | grep -i rocketmq | grep -v grep | awk '{print $2}' | xargs -i -t kill -9 {}

