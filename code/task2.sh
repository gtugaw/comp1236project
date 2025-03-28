#Code for Task 2's flowchart

#Hi

#Variables
read -p "Enter an initial position value: " initialPosition
read -p "Enter the amount of square numbers: " range
read -p "Enter a positive integer/number: " x
read -p "Enter the maximum sum of square numbers: " maxSum
let squareSum=o

#While loop
while [ $initialPosition -le $range ]
do
    squareNum=$((initialPosition ** 2))
    oddNum=$((squareNum % 2))
done