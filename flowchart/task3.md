# Task 3 Quadratic Sequence Flowchart

```mermaid
---
config:
  theme: forest
  look: handDrawn
  layout: elk
---
flowchart TB
    A([Start])
    A-->B[/Input a, b, c, n1, n2/]
    B-->C[sum = 0]


    CC-->D[n = n1]
    D-->E[term = an2 + bn +c]
    E-->F[sum = sum + term]
    E-->G[/Print term/]

    C-->CC[count = 0]
    G-->GF[modulo = 2]
    GF-->GH[remainder = term % modulo]
    GH-->GI{is remainder = 0?}
    GI--Yes-->GK[/Print term is not prime/]
    GM--Yes-->GJ[count = count - 1]

    GI--Noo-->GL[modulo = modulo + 1]
    GL-->GM{is modulo = term?}
    GJ-->GN[/Print term is prime/]

    GM--Noo-->GH





    F-->H{is n = n2?}

    H--Yes-->GO[/Print count/]

    H--Noo-->I[n = n + 1]
    I-->E
    J-->K[product = term * term1]
    K-->L[/Print product/]
    GO-->J[/Print sum/]
    

    E-->N{is n = n1?}
    N--Yes-->P[term1 = term]

    L-->Q[/Input x/]
    Q-->R[remainder = product % x]
    R-->S{is remainder = 0?}
    S--Yes-->T[/Print product is 
    a multiple of x/]
    S--Noo-->U[/Print product is 
    not a multiple of x/]

    T-->V([Stop])
    U-->V
```