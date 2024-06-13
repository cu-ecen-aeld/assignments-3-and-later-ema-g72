#!/bin/sh

if [ $# -ne 2 ]
then
	echo "Usage: $0 <directory> <string>"
	exit 1
fi

FILESDIR=$1
SEARCHSTR=$2

if [ ! -d $FILESDIR ]
then
	echo "$FILESDIR is not a directory"
	exit 1
fi

NUMFILES=$( find $FILESDIR -type f | wc -l )
NUMMATCHES=$( grep -r $SEARCHSTR $FILESDIR | wc -l)

echo "The number of files are $NUMFILES and the number of matching lines are $NUMMATCHES"
