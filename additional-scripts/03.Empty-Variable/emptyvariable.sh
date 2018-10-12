#!/bin/bash
# check a variable is empty or not
read -p "Enter the value of the variable " var
if [ -z $var ]
then echo "Variable is empty"
else echo "Variable is not empty"
fi