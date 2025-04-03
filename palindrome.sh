#!/bin/bash
echo "Enter the string"
read a
revs=$(echo $a|rev)
if [[ $a == $revs ]]
then
echo "String $a is palindrom"
else
echo "String $a is not palindrome"
fi
