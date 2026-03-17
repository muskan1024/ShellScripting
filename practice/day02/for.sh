#!/bin/bash

<<task
This is a program to print multiplication by taking arguement from user.
task

echo "Multiplication of $1: "
for (( num=1; num<=10; num++))
do 
	ans=$(($1*num))
	echo "$1 * $num = $ans"

done
