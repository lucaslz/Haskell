module Exercicio04 where
    -- Questao de fibonacci
    fib :: Int -> Int
    fib 0 = 0
    fib 1 = 1
    fib n = fib (n-1) + fib (n-2)
    fibs n = map fib [1..n]