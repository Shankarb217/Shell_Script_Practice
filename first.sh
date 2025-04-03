#!/bin/bash
echo "Enter the input1"
read a
echo "Entered user input is $a"
echo "Enter the input2"
read b
echo "Enter the filename"
read fil
touch $fil
ls -ltr $fil
echo -e "$a\n$b" >> $fil
echo "Below are content of file $fil"
cat $fil
upt=$(uptime)
co_user=$(who|wc -l)
ser=$(hostname)
curr_sess=$(whoami)
dt=$(date +%Y-%m-%d)
echo -e "Below are details of server $ser on date $dt\nUptime is $upt\nCount of user logged in $co_user\nCurrent session logged in name is $curr_sess" >> $fil
echo "Now we are creating user $a"
useradd $a
echo "We need to add caption"
usermod -c "$a$b" $a
echo "Below are details of user"
getent passwd $a
getent passwd $a >> $fil
echo "Lets set [assword  for $a"
echo "$a$b"|passwd $a --stdin
echo "Post setting passowrd below are detsil of shadown entrt"
getent shadow $a
getent shadow $a >>$fil

echo "Lets cretae group"
read gp
groupadd $gp
usermod -G $gp $a
echo "Beow are gRoups user $a part of it"
echo "Beow are gRoups user $a part of it" >>$fil
groups $a
groups $a >>$fil
