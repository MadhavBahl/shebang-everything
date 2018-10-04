#!/bin/bash
function fileCount () {
    LOC=$1
    ls "$LOC" > outText.txt
    NUM_FILES=$(wc -w outText.txt)
    echo "$NUM_FILES"
}
fileCount /etc
