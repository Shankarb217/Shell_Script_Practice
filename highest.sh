#!/bin/bash
k=0
lin=0
for i in $(cat num.txt)
do
lin=$(($lin+1))
if [[ $i -gt $k ]]
then
k=$i
newv=$k
newline=$lin
fi
done
echo "Highest Numbver in file is $newv in line number $newline"
