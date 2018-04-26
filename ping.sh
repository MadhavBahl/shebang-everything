#!/bin/bash
HOST="google.com"
ping -c 1 $HOST     # -c is used for count, it will send the request, number of times mentioned
if [ "$?" -eq "0" ]
then
  echo "$HOST reachable"
else
  echo "$HOST unreachable"
fi