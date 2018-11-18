module Exercicio01 where
    -- Funcao And Ternario
    -- 0 == False
    -- 1 == True
    -- 2 == Unknow
    andTern :: Int -> Int -> Int
    andTern x y = if (x == 0 && y == 1) || (x == 1 && y == 0) || (x == 0 && y == 0)
                    then 0
                    else if (x == 1 && y == 1)
                        then 1
                        else if (x == 1 && y == 2) || (x == 2 && y == 1) || (x == 2 && y == 2)
                            then 2
                            else 0
                            
    -- Funcao Or Ternario
    -- 0 == False
    -- 1 == True
    -- 2 == Unknow
    orTern :: Int -> Int -> Int
    orTern x y = if (x == 1 || y == 1)
                    then 1
                    else if (x == 0 && y == 0)
                        then 0
                        else if (x == 2 && y /= 1) || (x /= 1 && y == 2)
                            then 2
                            else 1

    -- Funcao Not Ternario
    -- 0 == False
    -- 1 == True
    -- 2 == Unknow
    notTern :: Int -> Int -> Int
    notTern x y = if (x == 1 && y == 0)
                    then 0
                    else if (x == 0 && y == 1)
                        then 1
                        else if (x == 2 && y == 2)
                            then 2
                            else if (x == 1 && y == 2)
                                then 1
                                else if (x == 0 && y == 2)
                                    then 0
                                    else x

    -- Funcao Not Ternario
    -- 0 == False
    -- 1 == True
    -- 2 == Unknow
    xorTern :: Int -> Int -> Int
    xorTern x y = if (x == 0 && y == 0)
                    then 0
                    else if (x == 0 && y == 1) || (x == 1 && y == 0)
                        then 1
                        else if (x == 1 && y == 1)
                            then 0
                            else 2