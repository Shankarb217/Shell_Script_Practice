#!/bin/bash
echo "Enter the number1"
read n1
echo "Enter the number2"
read n2
if [[ $n1 -eq $n2 ]]
then
echo "Both numbers are same"
adds=$(($n1+$n2))
echo "Sum of $n1 and $n2 is $adds"
elif [[ $n1 -gt $n2 ]]
then
echo "Number $n1 is greater than $n2"
mus=$(($n1*$n2))
echo "Product of $n1 and $n2 is $mus"
elif [[ $n1 -lt $n2 ]]
then
echo "Number $n1 is lesser than $n2"
sus=$(($n1-$n2))
echo "Difference of $n1 and $n2 is $sus"
fi
