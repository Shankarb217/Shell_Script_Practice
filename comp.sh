#!/bin/bash
echo "Enter the input1"
read a
echo "ENTER THE input2"
read b
coa=$(echo $a|wc -c)
cob=$(echo $b|wc -c)
echo $coa
echo $cob
if [[ $coa -eq $cob ]]
then
echo "Count of characters in $a and $b is same"
if [[ $a == $b ]]
then
echo "Both strings are same"
else
echo "Bith strings are different"
fi
else
echo "Count of characters in $a and $b is not same and there is no chance both strings can be same"
fi
