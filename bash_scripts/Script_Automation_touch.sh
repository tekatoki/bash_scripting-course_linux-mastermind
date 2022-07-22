#!/bin/bash
# This code is a automation to the touch-bash-program in case that you want to create a lot of files with the same extension and name. 
# However there will be a number to identifacate the file.

# Example:
# Stdin: ./Script_Automation_touch.sh file_name txt 4 test/
# Stdout: 
# The file file_name01.txt was created succesfuly
# The file file_name02.txt was created succesfuly
# The file file_name03.txt was created succesfuly       
# The file file_name04.txt was created succesfuly

# The parametres of the script: file_name extension number rute 

error() {
    echo $1 
    exit 1
}

if [ $# -ne 4 ]; then
    error "How to use the Script: ./Script file_name extension number rute"
fi 

if [ ! -d $4 ]; then  # -f / Checks if the file exists     -d / Checks if the directory exists
    error 'Error: The directory does not exists' 
fi 

if [ $3 -lt 1 ]; then
    error "Error: the number of files can not be less than 1"
fi

for (( i = 1; i <= $3; i++ )); do
    name="$4/$1$i.$2"
    if [ $i -lt 10 ]; then
        name="$4/$10$i.$2"
    fi
    touch $name
    echo "The file $name was created succesfuly" | tr -s /
done
