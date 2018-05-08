#!/bin/bash
cat /etc/shadow
STATUS=$?
if [ STATUS == 0 ]
then 
    echo "Command Executed!"
else
    echo "Command Not Executed!"
fi