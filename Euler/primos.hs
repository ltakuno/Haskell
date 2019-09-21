crivo :: [Int] -> [Int]
crivo (p:xs) = p : crivo [x | x<-xs, x `mod` p /= 0]

primos :: [Int]
primos = crivo [2 ..]

fator_primo :: Int -> Int
fator_primo num = head $ dropWhile (\x -> num `mod` x /= 0) primos

fatores_primos :: Int -> [Int]
fatores_primos 1 = []
fatores_primos num = fator : [x | x <- fatores_primos (num `div` fator)]
              where fator  = fator_primo num 

maior_fator_primo num = foldl1 (max) $ fatores_primos num
