#!/bin/bash
for usr in "abhi" "keerthan" "shankar45"
do
col=$(getent passwd $usr|wc -l)
if [[ $col -eq 1 ]]
then
echo "User $usr already exsists in server"
getent passwd $usr
cow=$(getent shadow $usr|cut -d ":" -f2| wc -c)
if [[ $cow -gt 3 ]]
then
echo "Password Already set for user $usr and below are entry"
getent shadow $usr
else
echo "Password Not set for user $usr and below are entry"
getent shadow $usr
echo "Enter 'yes' or YES or 'Yes' to set password"
read opt
if [[ $opt == "YES" ]] || [[ $opt == "Yes" ]] || [[ $opt == "yes" ]]
then
echo "User confirmed to set password"
echo "Enter the new password"
read -s pas
echo $pas| passwd $usr --stdin
echo "Below are passowrd entry post setting"
getent shadow $usr
else
echo "User Cinfirmed to not set password"
fi
fi
else
echo "User $usr not exsists in server"
useradd $usr
echo $usr| passwd $usr --stdin
getent passwd $usr
getent shadow $usr
fi
echo "========================================"
done
