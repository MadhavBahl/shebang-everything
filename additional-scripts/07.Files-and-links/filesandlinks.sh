#!/bin/bash
# creates a directory structure DIR1 which has five files in it F1,F2,F3,F4,F5. Add the names of a different
# fruit in each file. Now create a soft link of each file on desktop and access through soft link for
# concatenating the content in the new file FILE6
$(mkdir DIR1)
$(echo "apple">DIR1/F1)
$(echo "banana">DIR1/F2)
$(echo "mango">DIR1/F3)
$(echo "grapes">DIR1/F4)
$(echo "orange">DIR1/F5)
$(ln -s "DIR/F1" "~/Desktop/F1Link")
#@ TODO