maximum' :: (Ord a) => [a] -> a
maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

{-
replicate' :: Int -> a -> [a]
replicate' 0 = []
replicate' n = a : (replicate' (n-1) a)
-}


replicate' :: Int -> a -> [a]
replicate' leng val
  | leng <= 0    = []
  | otherwise    = val : replicate' (leng-1) val


{-
take' :: Int -> [a] -> [a]
take' how-many from
  | how-many <= 0 = from
  | otherwise     = (hd from) : take' (how-many-1) (tl from)
-}

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
  | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' (xs) ++ [x]

repeat' :: a -> [a]
repeat' x = x : repeat' x

zip' :: [a] -> [b] -> [(a, b)]
zip' _ []          = []
zip' [] _          = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' a (x:xs)
  | a == x        = True
  | otherwise     = elem' a xs
    


  
    

