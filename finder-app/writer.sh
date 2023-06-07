#!/bin/bash
file=$1
textstring=$2

if [ -z "$file" ]
then
    echo "no argument 1"
    exit 1
fi
if [ -z "$textstring" ]
then
    echo "no argument 2"
    exit 1
fi

mkdir -p "$(dirname "$file")" && touch "$file"


if [ $? -ne 0 ]
then
    echo "couldnt create file"
    exit 1
fi

echo "$textstring" > "$file"
