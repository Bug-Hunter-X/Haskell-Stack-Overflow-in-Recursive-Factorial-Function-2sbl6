The solution uses an accumulator to achieve tail recursion. This allows the compiler to optimize the function into a loop, avoiding excessive stack usage. 
```haskell
factorial :: Integer -> Integer
factorial n = factorialHelper n 1

factorialHelper :: Integer -> Integer -> Integer
factorialHelper 0 acc = acc
factorialHelper n acc = factorialHelper (n - 1) (n * acc)
```