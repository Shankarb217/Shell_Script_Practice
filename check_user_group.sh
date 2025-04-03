#!/bin/bash
echo "Enter the user input"
read usr
cgp=$(getent passwd $usr|wc -l)
cou=$(getent group $usr|wc -l)
if [[ $cog -eq 1 ]] && [[ $cou -eq 1 ]]
then
echo " it's a user"
elif [[ $cog -eq 0 ]] && [[  $cou -eq 1 ]]
echo "its a group"
fi

