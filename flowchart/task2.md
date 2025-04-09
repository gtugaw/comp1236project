# Draft Task 2 Flowchart
```
Comments:
1) Hello, this is a draft. Comment anything in this block/set of backticks ty.
```

```mermaid
flowchart TB
    A([Start])

    A-->B[/initialPosition = input initial position
    range = input amount of numbers
    x = input positive integer
    maxSum = input maximum sum output/]
    B-->D[squareCount=1
    count=0
    squareSum=0
    num=1
    ]

    D-->E{Is squareCount <= range?}
    E-- yes -->F[squareNum = initialPosition ** 2
    oddNum = squareNum % 2
    factor = x % squareNum]
    E-->F{is oddNum = 1}
    F--yes-->G{is factor = 0}
    G--yes-->H[/print "squareNum is factor of x"/]
    G--nop-->I[/print squareNum/]
    F-->J[initialPosition = initialPosition + 1]
    J-->D
    

    F-->G{is oddNum = 1?}
    G--yes-->H[/print squareNum/]

    H-->I{is factorX = 0?}
    I--yes-->J[/print "squareNum is factor of x"/]

    J-->K{is squareSum < maxSum?}
    K--yes-->L[squareSum = squareNum + squareCons]
    L-->M[/print squareSum/]

    M-->N[initialPosition = initialPosition + 1]
    N-->E

    E--no-->O(End)

```