#!/bin/bash

let IY=2017
let IM=2
let ID=5

PPATH=$1

#sys.2017-01-26.31.log
function DD(){
	GREPSTR=$1
	echo $GREPSTR
for fl  in `ls $PPATH | grep $GREPSTR`
do
	A=${fl/$GREPSTR\./}
	B=`expr substr "$A" 1 10`
	#echo $B

	OLD_IFS="$IFS" 
	IFS="-" 
	arr=($B) 
	IFS="$OLD_IFS" 
	let Y=${arr[0]}
	let M=${arr[1]}
	let D=${arr[2]}

	if [ $Y -lt $IY ]
	then
		echo $Y=$M=$D,[$fl]
		rm $PPATH/$fl -rf
	elif [ $Y -eq $IY ]
	then
		if [ $M -lt $IM ]
		then
			echo $Y=$M=$D,[$fl]
			rm $PPATH/$fl -rf
		elif [ $M -eq $IM ]
		then
			if [ $D -le $ID ]
			then
				echo $Y=$M=$D,[$fl]
				rm $PPATH/$fl -rf
			fi
		fi
	fi
done
}

DD "sys"
DD "error"

