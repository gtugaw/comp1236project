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
term1=0

while [ $n -le $n2 ]
do
    term=$[ a*n*n+b*n+c ]
    sum=$[ sum+term ]

    #echo "$[n] $[n2] $[term] $[sum]"

    if [ $n -eq $n1 ]
    then
        term1=$[ term ]
        #echo "$[product]"
    fi
    
    modulo=2

    while [ $[term%modulo] -ne 0 ]
    do
        modulo=$[ modulo+1 ]
        #echo "$[term] $[modulo]"

        if [ $modulo -eq $term ]
        then
            count=$[ count+1 ]
            echo "$[term] is a prime number."
        fi
    done

    n=$[ n+1 ]

done

#echo "$[term] $[term1]"
echo "There are/is $[count] prime number(s)."

echo "$[sum] is the sum of all the term."

product=$[ term*term1 ]

echo "$[product] is product of the first and last term."

read -p "Enter the value of (x): " x

if [ $[product%x] -eq 0 ]
then
    echo "$[product] is a multiple of $[x]."
fi