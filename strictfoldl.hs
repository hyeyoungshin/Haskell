foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' f a []     = a
foldl' f a (x:xs) = let a' = f a x in seq a' (foldl' f a' xs)

enumFromTo' :: Int -> Int -> [Int]
enumFromTo' m n
  | m > n  = error "bigger to smaller"
  | m < n  = m : enumFromTo' (m+1) n
  | m == n = [n]



  
