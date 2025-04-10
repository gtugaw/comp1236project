# Task 3 Quadratic Sequence shell script
#
# Coded by
# Student: Genesis Tugawin
# ID: 101579615

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