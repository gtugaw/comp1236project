#!/bin/bash

# This is where task 3 code must be place

echo "For the quadratic sequence term = an^2 + bn + c where n ranges fron n1 to n2, please input the values."

read -p "Enter the value of (a): " a
read -p "Enter the value of (b): " b
read -p "Enter the value of (c): " c
read -p "Enter the value of (n1): " n1
read -p "Enter the value of (n2): " n2

sum=0
# count=$[ n2-n1+1 ]
count=0
n=$[ n1 ]
product=1

while [ $n -le $n2 ]
do
    term=$[ a*n*n+b*n+c ]
    sum=$[ sum+term ]

    echo "$[n] $[n2] $[term] $[sum]"

    if [ $n -eq $n1 ]
    then
        product=term
        echo "$[product]"
    fi
    
    modulo=2

    while [ $[term%modulo] -ne 0 ]
    do
        modulo=$[ modulo+1 ]
        echo "$[term] $[modulo]"

        if [ $modulo -eq $term ]
        then
            count=$[ count+1 ]
            echo "$[term] is a prime number."
        fi
    done

    echo "$[count]"
 
    n=$[ n+1 ]
done





echo "The value of term where n=$[n] is $[term]."



sum=$[sum+term]

if [ $[n] == $[n2] ]
then
    echo "The number of prime in the sequence is $[count]."
    echo "The sum of the sequence is $[sum]."
else
    n=$[n+1]
fi



