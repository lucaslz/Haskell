module Exercicio05 where
    -- Intercala duas listas e retorna a mesclagem das duas
    merge :: [a] -> [a] -> [a]
    merge xs ys = xs ++ ys

    -- Insere um elemento entre os elementos de uma lista
    intersp :: a -> [a] -> [a]
    intersp y xs = countdown 1 xs where
        countdown 0 xs = y:countdown 1 xs
        countdown _ [] = []
        countdown m (x:xs) = x:countdown (m-1) xs

    -- Divide uma lista em duas caso o numero de elementos de lista for impar uma ficara maior que a outra
    mixHalf :: [a] -> ([a], [a])
    mixHalf [] = ([], [])
    mixHalf [x] = ([x], [])
    mixHalf (x:y:xys) = (x:xs, y:ys) where (xs, ys) = mixHalf xys

    -- Produz uma lista infinita atraves de um valor
    repeat' :: a -> [a]
    repeat' x = x : repeat' x

    -- Dado um valor n devolve os n primeiros elementos da s´erie de Fibonacci
    fib :: Int -> Int
    fib 0 = 0
    fib 1 = 1
    fib n = fib (n-1) + fib (n-2)
    fibs n = map fib [1..n]