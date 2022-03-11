#!/usr/bin/bash

# Tool to display totd

# Read the current tip number from curtip file
NUM=$(<.curtip)

# Print out the content of the tip file
cat $NUM.txt

# Increment by one
NUM=`expr $NUM + 1`

# Store the value to curtip file
echo $NUM > .curtip
