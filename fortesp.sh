#!/bin/bash
IFS=$'\n'
k=0
lin=0
for i in $(cat file.txt)
do
lin=$(($lin+1))
cow=$(echo $i|wc -w)
if [[ $cow -gt $k ]]
then
k=$cow
max_cow=$k
cont=$i
lin_fil=$lin
fi
done
echo -e "Content is $cont\nLine number is $lin_fil\nCount of words is $max_cow"
