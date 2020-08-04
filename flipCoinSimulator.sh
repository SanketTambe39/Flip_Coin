#!/bin/bash

flip=$((RANDOM%2))

if [ $flip -eq 0 ]
then
	echo " Heads win "
else
	echo " Tails win "
fi
