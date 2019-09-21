divisivel num = and [mod num x == 0 | x <- [1 .. 10]]
smallest_multiple = head $ dropWhile(not.divisivel) [1 ..]
