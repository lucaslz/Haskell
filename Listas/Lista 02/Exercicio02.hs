module Exercicio02 where
    -- Maior divisor comum entre dois numeros
    euclidesMdc :: Integral a => a -> a -> a
    euclidesMdc x y | mod x y == 0 = y
                 | mod y x == 0 = x
                 | x > y = euclidesMdc y (euclidesMdc x y)
                 | x < y = euclidesMdc x (euclidesMdc y x)

    -- Minimo divisor comum entre dois numeros
    euclidesMmc :: Integral a => a -> a -> a
    euclidesMmc x y | x == 0 = 0
                    | y == 0 = 0
                    | x == y = x
                    | otherwise = div (x * y) (euclidesMdc x y)
