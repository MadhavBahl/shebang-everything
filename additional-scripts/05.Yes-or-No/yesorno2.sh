#!/bin/bash

# Read in one character from the user (y,Y,n,N) If character is y or Y display YES else No
# Constraint: No other character will be displayed as input

read ans
echo $ans
case $ans in
    [Yy] | [Yy][Ee][Ss])
    echo "YES"
    ;;
    [Nn] | [Nn][Oo])
    echo "NO"
    ;;
    *)
    echo "Nothing"
    ;;
esac