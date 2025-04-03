#!/bin/bash
echo "Enter the input1"
read a
echo "Enter the input2"
read b
if [[ $a == $b ]]
then
echo "Both inputs are same"
mkdir $a
ls -ld  $a
touch $a/$b
echo "$a $b"  >> $a/$b
echo "Below are content of file $a/$b"
cat $a/$b
else
echo "Both inputs are not same"
useradd $a
usermod -c "$b" $a
echo "Below are details of user $a"
getent passwd $a
fi
