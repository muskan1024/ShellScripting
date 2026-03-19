#!/bin/bash


# In this file we have learned about comments, variable and taking input from user

<<comment
This is multi line comment
we can line comments in a block
comment

name="Muskan"

echo "Hey this is $name and today's date is $(date)"
echo
echo "------------------"
echo "Let do some addition"

echo "-------------------------------"

<<bin
echo "Enter Value 1: "
read value1
bin

read -p "Enter Value 1: " val1

read -p "Enter Value 2: " val2

val3=$((val1+val2))

echo "The addition of the given values are: $val3"
