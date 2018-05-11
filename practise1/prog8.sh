#!/bin/bash
DIR_NAME="$1"
if [ -e $DIR_NAME ]
then
    echo "The given file/directory exists!"
    exit 0
fi
echo "The given path to directory does not exists!"
mkdir $DIR_NAME
echo "Directory created!"
exit 1