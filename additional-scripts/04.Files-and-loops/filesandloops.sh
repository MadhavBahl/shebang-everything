#!/bin/bash
# Miscellaneous
# Read 5 file names from the user. Check if the user has entered the file name HELLO.
# show all the name while searching and stop the script as soon the name in the file name is encountered
read -p "Enter five spaced names " -a names
x=$(<HELLO.txt)
i=0
while (( i<5 ))
do
    echo "${names[i]}"
    if [ "$x"="${names[i]}" ]
    then 
        break
    fi
    (( i++ ))
done

# @TODO: Issues to be fixed here