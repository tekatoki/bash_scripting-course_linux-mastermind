#!/bin/bash
# This code compare a number that you insert on the terminal, then the code compares it with the conditions below

echo -n 'Insert a number: '
read inserted_value

if [[ $inserted_value -gt 5 ]]; then    # -gt / greater than    -ge / greater or equal   
    echo 'Your number is greater than 5'
elif [[ $inserted_value -lt 5 ]]; then  # -lt / lower than  -le / lower or equal
    echo 'Your number is lower than 5'
elif [[ $inserted_value -eq 5 ]]; then  # -eq / equal than  -ne / not equal
    echo 'Your number is equal than 5'
fi
