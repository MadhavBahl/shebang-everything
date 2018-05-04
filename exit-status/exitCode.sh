#!/bin/bash
DIR_NAME="/home/madhav/Desktop/Play"
if [ -e $DIR_NAME ]
then
  echo "Given Directory Already Exists"
  echo "Moving into ${DIR_NAME}"
  cd $DIR_NAME
  exit 0
fi
echo "Given Directory Does Not Exists"
mkdir $DIR_NAME
cd $DIR_NAME
exit 1