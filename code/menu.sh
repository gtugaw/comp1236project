# Interactive shell script for the menu

# Set the password to empty
password=""

# Set the warning counter to zero
warning=0

# Check if password is equal to w22
while [[ $password != "w22" ]]
do
    # Exit program after three invalid password
    if [ $warning -eq 3 ]
    then
        echo "Exiting program, maximum invalid password reach."
        exit
    fi

    # Print warning after two invalid password
    if [ $warning -eq 2 ]
    then
        echo "Warning: Only one left attempt to input the correct password!"
    fi

    # Ask user to enter a password
    read -p "Please enter the password: " password
    
    # Increment warning counter
    warning=$[ warning+1 ]
done

# Set answer to continue working to yes
again="Y"

while [[ $again == "Y" || $again == "y" || $again == "YES" || $again == "yes"  || $again == "Yes" ]]
do
    # Display the menu of the program
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
                    task1
                    ;;
                S | s)
                    echo -e "\nYou have selected to work with square numbers!"
                    task2
                    ;;
                Q | q)
                    echo -e "\nYou have selected to work with quadratic numbers!"
                    task3
                    ;;
            esac
        fi
    done

    # Set pressed keys to empty
    keys=""

    # Ask user to continue working or not
    echo    "------------------------------------"
    read -p "Do you want to work on another task? " again
done