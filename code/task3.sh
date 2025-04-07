# This is where task 3 code must be place

echo "For the quadratic sequence term = an^2 + bn + c where n ranges fron n1 to n2, please input the values."

read -p "Enter the value of (a): " a
read -p "Enter the value of (b): " b
read -p "Enter the value of (c): " c
read -p "Enter the value of (n1): " n1
read -p "Enter the value of (n2): " n2

sum=0
count=0
n=n1
product=1

term=$[a*n*n+b*n+c]

echo "The value of term where n=$[n] is $[term]."

if [ $[n] == $[n1] ]
then
    product=term
fi

sum=$[sum+term]

if [ $[n] == $[n2] ]
then
    echo "The count of prime is $[count]."
else
    n=$[n+1]
fi


