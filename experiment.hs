hd' :: [a] -> a
hd' [] = error "empty list"
hd' (x:xs) = x

tl' :: [a] -> a
tl' [] = error "empty list"
tl' [x] = x
tl' (x:xs) = tl' xs

take' :: Int -> [a] -> [a]
take' n ls
  | n == 0 = []
  | n >= 1 = (head ls : take' (n-1) (tail ls))

