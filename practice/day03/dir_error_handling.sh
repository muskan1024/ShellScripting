#!/bin/bash
#

<<comment
Problem: Safe Directory Creator
🎯 Task

Write a bash script that:

1️⃣ Takes a directory name as an argument
2️⃣ If no argument is given → show error
3️⃣ If directory already exists → show error
4️⃣ If directory does NOT exist:

Create the directory
Print: Directory created successfully
comment

if [ $# -eq 0 ] 
then
	echo "Error: No arguement is passed"
	exit 1
fi

if [ ! -d $1 ] 
then
	mkdir $1
	echo "Success: $1 created successfully"
	exit 1
fi

echo "Error: Directory already exists"

