#!/bin/bash
for fil in "file.txt" "/tmp/ko.txt" "/var/op.txt"
do
for con in "praveen" "besant" "nikhil"
do
col=$(grep "$con" "$fil"|wc -l)
if [[ $col -gt 0 ]]
then
echo "Content $con present in file $fil"
grep -in $con $fil
else
echo "Content $con not present in file $fil"
echo "Enter 'yes' to add content"
read opt
if [[ $opt == "yes" ]]
then
echo "User confirmed to add content $con to file $fil"
echo $con >> $fil
pst=$(grep $con $fil|wc -l)
if [[ $pst -gt 0 ]]
then
echo "Content $con successfully added to file $fil post user confirmation"
grep -in $con $fil
else
echo "Content $con not added to fle post confirmation also"
fi
else
echo "User Not confirmed to add content $con to file $fil"
fi
fi
done
echo "==============================================="
done
