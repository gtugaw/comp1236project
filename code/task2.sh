#COMP 1236 Task 2 Code
function task2 {
    echo "Task 2: Working with Square Numbers "
    read -p "From what position do you want to start?: " initialPosition
    read -p "How many square numbers do you want to see?: " range
    read -p "Type any positive integer here: " x
    read -p "What should be the maximum value of consecutive square numbers added?: " maxSum
    squareCount=1
    count=0
    sumNum=0
    value=1

    echo; echo

    echo "The square numbers in odd positions from $initialPosition until $range are: "
    echo

    while [ $squareCount -le $range ]
    do
            squareNum=$((initialPosition*initialPosition))
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

    while [ $sumNum -lt $maxSum ]
    do
            firstSquare=$((value*value))
            consNum=$((value+1))
            consSquare=$((consNum*consNum))
            sumNum=$((firstSquare+consSquare))
            if [ $sumNum -lt $maxSum ]
            then
                    echo $sumNum
                    count=$((count+1))

            fi
            value=$((value+1))
    done
    echo "Count of the sum of the consecutive square numbers: $count. "
}
