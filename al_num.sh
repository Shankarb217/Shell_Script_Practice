#!/bin/bash
echo "Enter the user input"
read p
if [[ $p =~ ^[a-z]+$ ]]
then
echo "Input $p conatisn only alphabet"
elif [[ $p =~ ^[0-9]+$ ]]
then
echo "Input $p contains only number and its valid input"
if [[ $p%2 -eq 0 ]]
then
echo "Input $p is even"
else
echo "Input $p is odd"
fi
elif [[ $p =~ [0-9] ]] && [[ $p =~ [a-z] ]]
then
echo "Input $p contains alphabet and number"
fi
