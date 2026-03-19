#!/bin/bash
#
<<function

The script should take a number as an argument.

Create a function that checks if the number is even or odd.

The function should print:

Even number if the number is even

Odd number if the number is odd

Call the function from the script.

function


num=$1
function odd_even() {
	if ((num%2 ==0 ))
	then
		echo "$1 is an even number"
	else
		echo "$1 is an odd number"
	fi
	}

odd_even $1

#taking input from user and checking if it is odd or even

echo
echo "-----------------------------------------------------------"
echo
echo "Checking the nature of the number entered by the user"
is_even_odd() {
	read -p "Enter a number: " number
	if ((number%2==0))
	then
		echo "$number is an Even Number"
	else
		echo "$number is an Odd Number"
	fi

}

is_even_odd
