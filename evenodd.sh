#!/bin/bash
echo "Enter the Number"
read n
echo "Enter the seicnd number"
read n2
if [[ $n%2 -eq 0 ]]
then
echo "Number $n is even"
co=$(($n+$n2))
echo "Sum of $n and $n2 is $co"
elif [[ $n%2 -ne 0 ]]
then
echo "Number $n is odd"
mk=$(($n-$n2))
echo "Difference of $n and $n2 is $mk"
fi
