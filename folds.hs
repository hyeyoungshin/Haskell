suml' :: (Num a) => [a] -> a
suml' xs = foldl (\acc x -> acc + x) 0 xs

sumr' :: (Num a) => [a] -> a
sumr' xs = foldr (\x acc -> x + acc) 0 xs

-- implementation of map using foldr
mapr :: (a -> b) -> [a] -> [b]
mapr f xs = foldr (\x acc -> f x : acc) [] xs

-- implementation of mpa using foldl
mapl :: (a -> b) -> [a] -> [b]
mapl f xs = foldl (\acc x -> acc ++ [f x]) [] xs

-- check whether a value is part of a list
elem' :: (Eq a) => a -> [a] -> Bool
elem' y xs = foldr (\x acc -> if x == y  then True else acc) False xs


