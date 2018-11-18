module Exercicio03 where
    -- Dado um angulo em radianos e uma referencia de precisao, retorna o valor do cosseno do angulo
    -- Ex.: cosA 0.001 (pi/2)

    -- Fazendo calculo em radianos
    radianos :: Double -> Double
    radianos t = t * 2 * pi/360

    -- Pegando o cossendo do angulo baseado no radianos
    -- cosA :: Double -> Double -> Double
    -- cosA x y = cos(radianos x y)