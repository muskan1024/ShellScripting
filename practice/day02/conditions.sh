#!/bin/bash


if [[ $1 -gt 0 ]];
then 
	echo "You entered a positive number"

elif [[ $1 == 0 ]];
then 
	echo "You entered Zero"

else
	echo "Your entered a negative number"

fi
