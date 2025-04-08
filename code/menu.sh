#!/bin/bash
# Bash code for the Menu

password=""
warning=0

while [[ $password != "w22" ]]
do
    if [ $warning -eq 3 ]
    then
        exit
    fi

    if [ $warning -eq 2 ]
    then
        echo "Warning: Only one left attempt to input the correct password!"
    fi

    read -p "Please enter the password: " password
    #echo "$password"

    warning=$[ warning+1 ]
done

echo "The password is correct."