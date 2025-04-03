#!/bin/bash
echo "Enter the processname"
read pr
cop=$(ps -eaf|grep $pr |wc -l)
if [[ $cop -gt 1 ]]
then
echo "Process $pr is running"
pid=$(ps -eaf |grep $pr|grep -iv "grep"|awk '{print $2}')
echo "Process $pr is running and have process id $pid"
echo "Enter 'yes' to kill the process"
read opt
if [[ $opt == "yes" ]]
then
echo "User confirmd to kill process $pr"
kill -9 $pid
conf_kill=$(ps -eaf|grep $pr |wc -l)
if [[ $conf_kill -gt 1 ]]
then
echo "Process $pr Not killed successfully"
else
echo "Process $pr killed suxxessfully post user confirmation"
fi
else
echo "User Not confirmed to kill process $pr"
fi
else
echo "Process $pr is not running"
fi
