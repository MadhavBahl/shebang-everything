#!/bin/bash
# diamond pattern
drawDiamond()
{
    length=$1
    for(( i=0;i<length;i++ ))
    do
        for(( j=length;j>i;j-- ))
        do
            echo -ne " "
        done
        for(( k=0;k<i;k++ ))
        do
            echo -ne "*"
        done
        for(( l=0;l<i-1;l++ ))
        do
            echo -ne "*"
        done
        echo ""
    done
}
read -p "Enter the length of the diamond " len
drawDiamond len