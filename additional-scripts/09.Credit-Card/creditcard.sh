#!/bin/bash
# gets input the credit card number eg 1234 4567 7890 1238 and stores the number. Then displays the masked three
# digits from each quad. (***4 ***7 ***0 ***8)

read -a creditcard
for (( i=0;i<4;i++ ))
do
echo -ne "***"
echo -ne "$(( ${creditcard[i]}%10 )) "
done