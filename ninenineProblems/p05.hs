myReverse:: [a] -> [a]
myReverse [a] = [a]
myReverse (x:xs) = myReverse xs ++ [x]
