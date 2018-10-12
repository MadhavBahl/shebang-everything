#!/bin/bash
# count the number of sub-directories in a directory
# just the to total number of directories

echo $( find -mindepth 1 -type d ) | wc -w