#!/bin/bash
# input from the user for directory
# and create backup directory in the desired location entered by the user
dest="output"
read -p "Enter the directory you want to backup " src
echo $src
read -p "Enter the directory where you want to copy the files into " dest
echo $dest
if [ -n $src ]
then
    if [ -d $src ]
        then $(cp $src ./output/$dest -r)
    else
        echo "Copy failed"
    fi
else
    echo "Source directory not specified"
fi
