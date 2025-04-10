    #Task 2 Working with Square Numbers
    #Find square numbers in odd positions, starting from a user input initial position and a range.
    #From those square numbers, find those that are factors of x, a user input value.
    #Sum consecutive square numbers until a maximum value entered by user.
    #Code by Maria Tai

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
