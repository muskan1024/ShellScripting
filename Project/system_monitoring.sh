#!/bin/bash
#


echo "--------------System Monitoring Dashboard--------------"
echo

echo "You are currently logged in as $(whoami)"
echo

echo "The system is running from last $(uptime)"
echo

echo "Memory Usage is as follows: " 
echo $(free -h)
echo


echo "Statistics of the system are as follows:" 
echo $(vmstat)
echo


