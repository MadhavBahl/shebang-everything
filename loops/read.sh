#!/bin/bash
LINE=1
while read CURRENT_LINE
do
  echo "${LINE}: $CURRENT_LINE"
  ((LINE++))
done < /etc/passwd