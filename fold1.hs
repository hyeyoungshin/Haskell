-- foldl1 and foldr1 don't need an explicit starting accumulator
-- they assume the first (or last) element of the list to be the starting accumulator
-- so if you pass an empty list, a runtime error occurs

maximumr :: (Ord a) => [a] -> a
maximumr = foldr1 max

maximuml :: (Ord a) => [a] -> a
maximuml = foldl1 max

reverse' :: [a] -> [a]
reverse' xs = foldl (\acc x -> x:acc) [] xs

reverseflip :: [a] -> [a]
reverseflip = foldl (flip (:)) []

product' :: (Num a) => [a] -> a
product' = foldl1 (*)

filter' :: (a -> Bool) -> [a] -> [a]
filter' p xs = foldr (\x acc -> if p x then x:acc else acc) [] xs

last' :: [a] -> a
last' [] = error "empty list"
last' (x:xs) = head (foldl (\acc x -> x: acc) [] xs) -- head (reverse' xs)

-- a smarter way using foldl1
lastsmart :: [a] -> a
lastsmart = foldl1 (\_ x -> x)


