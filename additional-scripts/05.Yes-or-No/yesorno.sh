#!/bin/bash

# Read in one character from the user (y,Y,n,N) If character is y or Y display YES else No
# Constraint: No other character will be displayed as input

read -p "Enter yes or no " ans
echo $ans
if [ $ans=="yes" ]
then
echo "YES"
else
echo "NO"
fi

# Not working as expected