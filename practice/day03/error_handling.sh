#!/bin/bash


<<task
Task

Create a bash script that:

1️⃣ Takes a filename as an argument
2️⃣ If no argument is given → show error
3️⃣ If file does not exist → show error
4️⃣ If file exists:

Print: File found

Show number of lines in the file

task

<<comment
if find $1; then 
	echo "File $1 found"
	exit 1
fi

echo "File $1 found"
exit 0


if [[ -f "$1" ]];
then 
	echo "File $1 found"

else 
	echo "File $1 not found"

fi
i
comment

if [[ $# -eq 0 ]]; then
	echo "Error: No arguement passed"
	exit 1
fi

if [[ ! -f "$1" ]]; then
	echo "Error: File $1 not found"
	exit 1
fi
lc=$(wc -l < $1) 
echo "Success: File $1 found and it has $lc number of lines"


