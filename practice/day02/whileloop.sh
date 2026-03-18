#!/bin/bash
#

pass="linux123"
read -p "Enter your password: " input

while [[ $input != $pass ]]
do
	echo "Incorrect password"
	read -p "Please try again: " input
done	

echo "Your password is correct"
