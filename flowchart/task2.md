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
    E--yes-->F[squareNum = initialPosition ** 2
    oddNum = squareNum % 2
    factor = x % squareNum]
    F-->G{is oddNum = 1}
    G--yes-->H{is factor = 0}
    H--yes-->I[/print "squareNum is factor of x"/]
    H--nop-->J[/print squareNum/]
    I-->K[squareCount = squareCount + 1]
    J-->K
    K-->L[initialPosition = initialPosition + 1]
    L-->E

    E--nop-->M{is squareSum < maxSum}
    M--yes-->N[firstSquare = num ** 2
    consNum = num + 1
    consSquare = consNum**2
    squareSum = firstSquare + consSquare]
    N-->O{is squareSum < maxSum}
    O--yes-->P[/print squareSum/]
    P-->Q[count = count + 1]
    Q-->R[num = num + 1]
    R-->M
    M--nop-->S[/print count/]
    S-->T([End])


```