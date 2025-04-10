# Finding Hexagonal Numbers In Range
# Segregate The Odd And Even Numbers
# Find The Sum Of Odd And Even Numbers

read -p "Enter the lower bound a: " a
read -p "Enter the upper bound b: " b

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


