#!/bin/bash
# This is a for loop that prints all the numbers starting with 0 until the number you had inserted. 
# However, the number you had inserted will not be printed on the console

echo -n 'Insert a number: '
read limit

for (( i = 0; i < $limit; i++ )); do
    echo $i
done
