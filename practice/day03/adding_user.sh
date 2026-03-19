#!/bin/bash


read -p "Enter your username: " username

sudo useradd -m $username

sudo passwd $username

echo "Username and Password set succesffuly for $username"


echo
echo "-------------------------------"
echo "        Login Dashboard        "
echo "-------------------------------" 
echo

read -p "Enter your username: " userid
su $userid
echo
echo "$userid logged out succesfully!"
