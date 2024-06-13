#!/bin/sh

if [ $# -ne 2 ]
then
	echo "Usage: $0 <filename> <string>"
	exit 1
fi

WRITEFILE=$1
WRITESTR=$2

mkdir -p $( dirname $WRITEFILE ) && echo $WRITESTR > $WRITEFILE

