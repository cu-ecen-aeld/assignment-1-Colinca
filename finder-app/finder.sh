#!/bin/bash
filesdir=$1
searchstr=$2
no=0

if [ -z "$filesdir" ]
then
    echo "no argument 1"
    exit 1
fi
if [ -z "$searchstr" ]
then 
    echo "no argument 2"
    exit 1
fi
if [ ! -d "$filesdir" ]
then 
    echo "not valid directory"
    exit 1
fi

#number of files
filecount=`find "$filesdir" -type f | wc -l`
resultX=`echo "$filecount"`


#number of searchstr occurences
searchcount=`grep -rw "$filesdir" -e "$searchstr" | wc -l`
resultY=`echo "$searchcount"`

echo "The number of files are "$resultX" and the number of matching lines are "$resultY""
