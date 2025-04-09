# Interactive shell script for the menu
#!/bin/bash

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

again="Y"

while [[ $again == "Y" || $again == "y" || $again == "YES" || $again == "yes"  || $again == "Yes" ]]
do
    echo -e "---------------------------MENU----------------------------------"
    echo -e "1. Press [H] or [h] if you want to work with hexagonal numbers."
    echo -e "2. Press [S] or [s] if you want to work with square numbers."
    echo -e "3. Press [Q] or [q] if you want to work with quadratic sequences."
    echo -e "-----------------------------------------------------------------"
    until [[ $keys == "H" || $keys == "h" || $keys == "S" || $keys == "s" || $keys == "Q" || $keys == "q" ]]
    do
        echo -en "Press the key: "
        read -n 1 keys
        if [[ $keys != "H" && $keys != "h" && $keys != "S" && $keys != "s" && $keys != "Q" && $keys != "q" ]]
        then
            echo -e "\nWarning: Invalid key pressed!"
        else
            case $keys in
                H | h)
                    echo -e "\nYou have selected to work with hexagonal numbers!"
                    # task1
                    ;;
                S | s)
                    echo -e "\nYou have selected to work with square numbers!"
                    # task2
                    ;;
                Q | q)
                    echo -e "\nYou have selected to work with quadratic numbers!"
                    # task3
                    ;;
            esac
        fi
    done

    keys=""

    read -p "Do you want to work on another task? " again
done