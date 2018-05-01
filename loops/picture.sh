#!/bin/bash
PICTURES=$(ls *.jpg)
NEW="new"
for PICTURE in $PICTURES
do
  echo "Renaming $PICTURE to new-$PICTURE"
  mv $PICTURE $NEW-$PICTURE
done