#!/bin/bash
echo "Turning x-trace on!"
set -x
VAL="Hello World!"
echo "$VAL"
set +x
VAL="x-trace turned off!"
echo "Turning x-trace off!"
echo "$VAL"