module Exercicio09 where
    -- Converte um numero decimal para uma lista de binario
    toBin 0 = [0]
    toBin n | n `mod` 2 == 1 = toBin (n `div` 2) ++ [1]
            | n `mod` 2 == 0 = toBin (n `div` 2) ++ [0]

    -- dado dois elementos x e y e uma lista xs substitui toda ocorr^encia de x por y em xs
    replace :: Eq a => a -> a -> [a] -> [a]
    replace a b = map $ \c -> if c == a then b else c

    -- computa a frequencia de cada elemento em uma dada lista
    count :: Eq a => [a] -> [(Int,a)]
    count [] = []
    count (x:xs) = (1 + length (takeWhile (==x) xs), x) : count (dropWhile (==x) xs)