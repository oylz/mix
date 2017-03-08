#!/bin/bash

GREPSTR=$1

#A=`screen -ls | grep $GREPSTR | awk '{print $1}'`
#B=${A/\.$GREPSTR/}

#screen -r $B


function go(){
        S=$1
        IIPP=$2
        cc=`screen -ls | grep $S | wc -l`
        if [ $cc -gt 0   ]
        then
                echo igore, return $S $IIPP
                return
        fi

        echo $S > $S
        screen -dmS $S ssh $IIPP -lroot
}



#screen -r $GREPSTR

LINE=`cat hh | grep $GREPSTR`
OLD_IFS="$IFS"
IFS=" "
arr=($LINE)
IFS="$OLD_IFS"
S=${arr[1]}
IIPP=${arr[2]}
go $S $IIPP
screen -r $GREPSTR

