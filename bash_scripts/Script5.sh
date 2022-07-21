#!/bin/bash

if [ ! -d $1 ]; then  # -f / Checks if the file exists     -d / Checks if the directory exists
    echo 'Error: The directory does not exists'
    exit 1
fi 

total=0
for f in `ls $1`; do
    name="$1/$F"
    if [ -f $name ]; then
        bytes=`ls -l $name | cut -d ' ' -f 5`
        echo "The file $name has $bytes" | tr -s /
        (( $total += $bytes ))
    fi
done

echo -e "Total bytes: $total"
