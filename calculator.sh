#!/bin/bash
echo "Enter First number"
read a
echo "Enter second number"
read b
echo -e "Enter 1 for Addition\nEnter 2 for substraction\nEneter 3 for product\nEneter 4 for division"
read output
if [[ $output -eq 1 ]]
then
result=$((a + b))
echo "The addition is: $result"
elif [[ $output -eq 2 ]]
then
result=$((a - b))
echo "The Substraction is: $result"
elif [[ $output -eq 3 ]]
then
result=$((a * b))
echo "The Product is: $result"
elif [[ $output -eq 4 ]]
then
result=$((a / b))
echo "The Division is: $result"
else 
echo "Entered Number is Invalid"
fi


