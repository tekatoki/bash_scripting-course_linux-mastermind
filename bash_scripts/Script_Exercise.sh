#!/bin/bash

# This code automates the process to add a prefix in all of the files of your directory

# Example:
# ~$ ls test/
# text01.txt text02.txt text03.txt
# Stdin: ./Script prefix- test/
# Stdout:
# test/text01.txt ---> test/prefix-text01.txt
# test/text02.txt ---> test/prefix-text02.txt
# test/text03.txt ---> test/prefix-text03.txt    

# The parametres of the script: prefix rute

error() {
    echo $1 
    exit 1
}

if [ $# -ne 2 ]; then
    echo "Error: Invalid parametres"
    error "How to use the Script: ./Script prefix- rute"
fi

if [ ! -d $2 ]; then
    error "Error: The directory does not exists"
fi

for f in `ls $2`; do
    name_1="$2/$f"
    if [ -f $name ]; then
        name_2="$2/$1$f"  
    fi
    mv $name_1 $name_2
    echo "$name_1 ---> $name_2" | tr -s /
done
