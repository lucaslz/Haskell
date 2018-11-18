module Exercicio07 where
    count:: Eq a => a -> [a] -> Int
    count n = until' ((h:t) n == h) (1 + count n t) [0]

    -- count:: Eq a => a -> [a] -> Int
    -- count n [] = 0
    -- count n (h:t) | n == h = 1 + count n t
    --               | otherwise = count n t

    -- sequence' :: Int -> [Int]
    -- sequence' x = until' (\y -> last y == x) (\y -> y ++ [last y + 1]) [1]