remover _ [] = []
remover s (x:xs) | (s == x) = (remover s xs)
                 | otherwise = (x:xs)

compress [] = []
compress (x:xs) = x : compress(remover x xs)
