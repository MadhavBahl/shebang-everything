#!/bin/bash
#accept 5 integer values and find its average in floating point with three decimal places

read -a values
sum=0
for (( i=0;i<5;i++ ))
do
    (( sum+=values[i] ))
done
echo "scale=3; $sum/5" | bc