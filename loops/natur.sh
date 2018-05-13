#!/bin/bash
INDEX=1
while [ $INDEX -lt 11 ]
do
  echo "Current Number: ${INDEX}"
  (( INDEX = INDEX + 1 ))
done