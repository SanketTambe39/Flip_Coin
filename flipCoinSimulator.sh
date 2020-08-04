#!/bin/bash

heads=0
tails=0

#for((i=0;i<100;i++))
while ((1))
do
	flip=$((RANDOM%2))

        if [ $flip -eq 0 ]
        then
                heads=$(($heads+1))
        else
                tails=$(($tails+1))
        fi

	if [[ $heads -eq 21 || $tails -eq 21 ]]
	then
		break
	fi

done

if [ $heads -eq 21 ]
then
	echo " head won "$heads" times "
else
	echo " Tail won "$tails" times "
fi
