eh_Palindrome x = v == reverse v where v = show x

palindromes = [x*y | x <- [100 .. 999], y <- [100 .. 999], eh_Palindrome(x * y)]
