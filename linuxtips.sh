#!/usr/bin/bash

# Tool to display totd

# Check no interactive shell, exit
tty -s || exit
# If user has file .nototd, exit
if [ -e ~/.nototd ]; then
	return 0
fi

# Directory of this script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
#echo "$SCRIPT_DIR"

tip(){
# Count number of tips in folder where script is
NUMTIP=$(ls "$SCRIPT_DIR"/tips/*.txt | wc -l)
echo "Number of tips: $NUMTIP"

# Read the current tip number from curtip file
NUM=$(<.curtip)

# Check that current tip is in range and increment by one
NUM=$(expr $NUM % $NUMTIP)
NUM=$(expr $NUM + 1)
echo Current: $NUM
echo ""

# Print out the content of the tip file
cat "$SCRIPT_DIR"/tips/$NUM.txt
echo ""

# Increment by one
# NUM=`expr $NUM + 1` different syntax
#NUM=$(expr $NUM + 1)

# Store the value to curtip file
echo $NUM > .curtip

# Prompt for more tips
read -p "Show next tip? (j) " -n 1 -r answer
if [ "$answer" = j ]; then
	echo -e "\n"
	tip
fi
}

# call function
tip
