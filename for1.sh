#!/bin/bash
echo "Enter the another input"
read p
for ((i=0;i<=20;i++))
do
echo "Orginal Number is $i"
j=$(($i+$p))
echo "adding $i and $p is $j"
echo "==========================================="
done
