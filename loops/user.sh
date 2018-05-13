#!/bin/bash
while [ "$CORRECT" != y ]
do
  read -p "Enter your username: " USERNAME
  read -p "Is $USERNAME correct? " CORRECT
done