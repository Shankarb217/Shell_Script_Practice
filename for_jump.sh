#!/bin/bash
echo "Enter the Jump"
read p
for ((i=0;i<=20;i++))
do
echo $i
i=$(($i+$p))

done
