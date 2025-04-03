#!/bin/bash
echo "Enter the input"
read p
if [[ $p%2 -eq 0 ]]
then
echo "Number $p is even"
elif [[ $p%2 -ne 0 ]]
then
echo "Number $p is odd"
echo "Enter divisor1"
read d1
echo "Enter the divisor2"
read d2
if [[ $p%$d1 -eq 0 ]] && [[ $p%$d2 -eq 0 ]]
then
echo "$p is divisable by both $d1 and $d2"
elif [[ $p%$d1 -eq 0 ]] && [[ $p%$d2 -ne 0 ]]
then
echo "$p is divisable by $d1 and not by $d2"
elif [[ $p%$d1 -ne 0 ]] && [[ $p%$d2 -eq 0 ]]
then
echo "$p is divisable by $d2 and not by $d1"
elif [[ $p%$d1 -ne 0 ]] && [[ $p%$d2 -ne 0 ]]
then
echo "$p is not divisable by $d1 and  $d2"
fi
fi
