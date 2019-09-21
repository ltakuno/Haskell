element_at xs n 
  | length xs < n = error "Index out of bound"
  | otherwise = last $ take n xs
