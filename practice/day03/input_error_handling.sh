#!/bin/bash
#

read -p "Enter a Directory name you want to create: " Dir

if [ ! -d $Dir ]
then
	mkdir $Dir
	echo "Success: $Dir folder created successfully"
	exit 1
fi

echo "Error: $Dir folder already exists"
