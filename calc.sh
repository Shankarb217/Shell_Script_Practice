#!/bin/bash
echo "Enter the input"
read p
if [[ $p =~ ^[0-9]+$ ]]
then
echo "Input $p is valid"
if [[ $p%2 -eq 0 ]]
then
echo "Input $p is even"
else
echo "Input $p is odd"
fi
else
echo "Input $p is invalid"
echo "Eter the valid input means digit"
read gy
echo "User got second channce"
if [[ $gy =~ ^[0-9]+$ ]]
then
echo "User entered valid input $gy in second chance"
echo "Second input number"
read q
echo -e "Enter '1' for addition\n'2' for multiplication"
read opt
if [[ $opt -eq 1 ]]
then
co=$(($gy+$q))
echo "Sum of $gy and $q is $co"
elif [[ $opt -eq 2 ]]
then
muj=$(($gy*$q))
echo "Product of $gy and $q is $muj"
fi
else
echo "User entered invalid input in second attaempt so no more chanbces"
fi
fi
