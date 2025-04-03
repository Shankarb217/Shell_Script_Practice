#!/bin/bash

# Prompt for the first number
echo "Enter the first number"
read a

# Prompt for the second number
echo "Enter the second number"
read b

# Prompt for the operation
echo "Enter 1 for Addition"
echo "Enter 2 for Subtraction"
echo "Enter 3 for Multiplication"
echo "Enter 4 for Division"
read output

# Perform the selected operation
if [ "$output" -eq 1 ]; then
    result=$((a + b))
    echo "The addition is: $result"
elif [ "$output" -eq 2 ]; then
    result=$((a - b))
    echo "The subtraction is: $result"
elif [ "$output" -eq 3 ]; then
    result=$((a * b))
    echo "The multiplication is: $result"
elif [ "$output" -eq 4 ]; then
    if [ "$b" -eq 0 ]; then
        echo "Division by zero is not allowed!"
    else
        result=$((a / b))
        echo "The division is: $result"
    fi
else
    echo "Invalid operation selected."
fi

