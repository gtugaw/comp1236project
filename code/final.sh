# Final shell script of the application

#!/bin/bash


# Finding Hexagonal Numbers In Range
# Segregate The Odd And Even Numbers
# Find The Sum Of Odd And Even Numbers
function task1 {

    read -p "Enter the lower bound a: " a
    read -p "Enetr the upper bound b: " b

    n=1
    odd_count=0
    even_count=0
    odd_sum=0
    even_sum=0
    hexagonal_numbers=()

    echo "hexagonal numbers in range [$a, $b]"

    while true
    do

    hex=$((n * (2 * n -1)))


    if [ $hex -ge $b ]
    then
    break

    fi

    if [ $hex -ge $a ]
    then
            hexagonal_numbers+=($hex)

    if (( hex % 2 == 0 ))
    then
            echo "The number is even: $hex."
            (( even_count++ ))
            (( even_sum += hex ))
    else
            echo "The number is odd: $hex."
            (( odd_count++ ))
            (( odd_sum += hex ))
    fi
    fi
    ((n++))
    done

    #output

    echo "even count: $even_count"
    echo "odd count: $odd_count"
    echo "sum of even hexagonal numbers: $even_sum"
    echo "sum of odd hexagonal numbers: $odd_sum"

}



#Task 2 Working with Square Numbers
#Find square numbers in odd positions, starting from a user input initial position and a range.
#From those square numbers, find those that are factors of x, a user input value.
#Sum consecutive square numbers until a maximum value entered by user.
#This is the final code
function task2 {
    echo "Task 2: Working with Square Numbers "
    read -p "From what position do you want to start?: " initialPosition
    read -p "How many square numbers do you want to see?: " range
    read -p "Type any positive integer here: " x
    read -p "What should be the maximum value of consecutive square numbers added?: " maxSum
    squareCount=1
    count=0
    squareSum=0
    num=1

    echo; echo

    echo "The square numbers in odd positions from $initialPosition until $range are: "
    echo

    while [ $squareCount -le $range ]
    do
            squareNum=$((initialPosition**2))
            oddNum=$((squareNum%2))
            factor=$((x%squareNum))
            if [ $oddNum -eq 1 ]
            then
                    if [ $factor -eq 0 ]
                    then
                            echo "$squareNum --> is a factor of $x. "
                    else
                            echo $squareNum
                    fi
                    squareCount=$((squareCount+1))
            fi
            initialPosition=$((initialPosition + 1))
    done

    echo; echo

    echo "The sum of two consecutive square numbers results in: "
    echo

    while [ $squareSum -lt $maxSum ]
    do
            firstSquare=$((num**2))
            consNum=$((num+1))
            consSquare=$((consNum**2))
            squareSum=$((firstSquare+consSquare))
            if [ $squareSum -lt $maxSum ]
            then
                    echo $squareSum
                    count=$((count+1))

            fi
            num=$((num+1))
    done
    echo "Count of the sum of the consecutive square numbers: $count. "
}



# Task 3 Quadratic Sequence shell script
function task3 {

    # Display the formula of the quadratic sequence
    echo "For the quadratic sequence, term = an^2 + bn + c where n ranges from n1 to n2 please enter the following values."

    read -p "Enter the value of (a): " a
    read -p "Enter the value of (b): " b
    read -p "Enter the value of (c): " c
    read -p "Enter the value of (n1): " n1
    read -p "Enter the value of (n2): " n2

    # Set the sum of all term to zero
    sum=0

    # Set the count of all prime numbers in the term sequence to zero
    count=0

    # Set the value of n to n1
    n=$[ n1 ]

    # Set the value of the term[n1] to zero
    term1=0

    # Main loop to determine the value of term
    while [ $n -le $n2 ]
    do
        # Compute the value of term
        term=$[ a*n*n+b*n+c ]

        # Compute the sum of the terms
        sum=$[ sum+term ]

        # Check n if it is the first range
        if [ $n -eq $n1 ]
        then
            # Store the value of first term in the range
            term1=$[ term ]
        fi
        
        # Set the first divisor for modulo division
        divisor=2

        # Reset string for not a prime number
        isprime=" not"

        # Check whether the modulo division remainder is not equal to zero
        while [ $[term%divisor] -ne 0 ]
        do
            # Increment divisor
            divisor=$[ divisor+1 ]

            # Final check if term is only divisible by itself
            if [ $divisor -eq $term ]
            then
                # Increment counter for prime number
                count=$[ count+1 ]

                # Display term and indicate it as prime number
                isprime=""
            fi
        done
        
        # Display term and indicate if it is a prime number
        echo "Term[$[n]] is $[term] and$isprime a prime number."

        # Increment n to calculate the next term
        n=$[ n+1 ]

    done

    # Display the count of prime number terms
    echo "The count of prime numbers in all of the terms is $[count]."

    # Display the sum of all terms in the range
    echo "The sum of all the terms is $[sum]."

    # Calculate the product of the first and last term
    product=$[ term*term1 ]

    # Display the product of the first and last term
    echo "The product of the first and last term is $[product]."

    # Ask the user to input the value of x
    read -p "Enter a value for (x): " x

    # Check if product modulo x is equal to zero
    if [ $[product%x] -eq 0 ]
    then
        # Display that x is a multiple of the product
        echo "The product $[product] is a multiple of $[x]."
    else
        # Display that x is not a multiple of the product
        echo "The product $[product] is not a multiple of $[x]."
    fi
}

# Interactive shell script for the menu
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

    keys=""

    read -p "Do you want to work on another task? " again
done