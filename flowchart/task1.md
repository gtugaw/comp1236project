##PART 1 
##HEXAGONAL NUMBERS
---
config:
  theme: redux
---

```mermaid
flowchart TD
    A([START]) 
    A --> B[/"input range(A,B)"/]
    B --> C["n = 1, even_num = 0, odd_num = 0, odd_sum = 0, even_sum = 0"]
    C --> D["product = n(2n-1)"]
    D --> E{"B>=product"}
    E --Noo--> N
    E -.Yes.-> G{"A<=product"}
    G -.Yes.-> H{"Is product even?"}
    G --Noo--> I["n=n+1"]
    I --> D
    H -.Yes.-> Z["num_even+=1"]
    H --Noo--> Y["num_odd+=1"]
    Z --> J["even_sum=even_sum+even"]
    Y --> K["odd_sum=odd_sum+odd"]
    K --> M
    J --> M[/Output: "hexagonal_numbers, even_count, odd_count, sum_even, sum_odd,"/] 
    M --> N([Stop])
```
