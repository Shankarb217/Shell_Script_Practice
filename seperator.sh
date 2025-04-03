#!/bin/bash
echo "Enter the content to be checked"
read con
echo "Enter the field number"
read ft
lin=0
for i in $(cat lp.txt)
do
lin=$(($lin+1))
col=$(echo $i|grep $con|wc -l)
if [[ $col -gt 0 ]]
then
echo "Content $con present in linenumber $lin"
bh=$(echo $i|cut -d ":" -f$ft)
if [[ $bh == $con ]]
then
echo "Content $con present in column $ft in line number $lin"
echo $i
else
echo "Content $con not present in column $ft in line number $lin"
fi
else
echo "content $con not present in linenumbver $lin"
fi
done
