module Exercicio08 where
    iterate' :: (a -> a) -> a -> [a]
    iterate' f a = a : iterate' f (f a)