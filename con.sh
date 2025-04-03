#!/bin/bash
echo "Enter the input1"
read a
if [[ $a == "praveen" ]] || [[ $a == "PRAVEEN" ]]
then
echo "True"
uptime
elif [[ $a == "abhi" ]] || [[ $a == "ABHI" ]]
then
echo "Almost true"
who
elif [[ $a == "ajay" ]] || [[ $a == "AJAY" ]]
then
echo "Not false"
uname
else
echo "False"
free
fi
