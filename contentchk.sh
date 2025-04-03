#!/bin/bash
echo "Enter the content to be checked"
read con
echo "Enter the file name"
read fil
col=$(grep $con $fil|wc -l)
if [[ $col -gt 0 ]]
then
echo "Content $con present in file $fil"
echo "Below are Lines where content $con present in file $fil"
grep -n "$con" $fil
else
echo "Content $con not present in file $fil"
fi
