#!/bin/bash -x

heads=0
tails=0

for((i=0;i<100;i++))
do
	flip=$((RANDOM%2))

        if [ $flip -eq 0 ]
        then
                heads=$(($heads+1))
        else
                tails=$(($tails+1))
        fi
#	heads=21
#	tails=21
	if [[ $heads -eq 21 || $tails -eq 21 ]]
	then
		break
	fi

done

if [[ $heads -eq 21 && $tails -eq 21 ]]
then
	echo " We just got Tie"
elif [ $heads -eq 21 ]
then
	echo " head won "$heads" times "
elif [ $tails -eq 21 ]
then
	echo " Tail won "$tails" times "
fi
