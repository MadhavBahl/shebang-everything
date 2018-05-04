#!/bin/bash
MY_VAR=10
if [ "$MY_VAR" -ge 15 ] || [ "$MY_VAR" -le 11 ]
then
  echo "Given variable is either greater than 15 or less than 11"
fi