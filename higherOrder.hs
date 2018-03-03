multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z

multTwoWithNine = multThree 9

compareWithHundred :: Int -> Ordering
compareWithHundred x = compare 100 x

compareWithHundred' = compare 100

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperAlphaNum :: Char -> Bool
isUpperAlphaNum = (`elem` "A..Z")

subtractFourFrom = (4 `subtract`)

applytwice :: (a -> a) -> a -> a
applytwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = (f x y) : zipWith' f xs ys

flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x -- This means f is a function that takes an argument of type a first and b, but  if you give it an argument of b first and then an argument of type a, flip fixes this order.

map' :: (a -> b) -> [a] -> [b]
map' f []     = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' p []       = []
filter' p (x:xs) 
     | p x         = x : filter' p xs
     | otherwise   = filter' p xs

quicksort' :: (Ord a) => [a] -> [a]
quicksort' []     = []
quicksort' (x:xs) = let smaller = filter (<=x) xs
                        bigger = filter (>x) xs
                        in quicksort' smaller ++ [x] ++ quicksort' bigger


-- largest number under 100,000 that's divisible by 3829
largestDivisible :: Integer
largestDivisible = head (filter p [99999, 99998..])
  where p x = x `mod` 3829 == 0

allSquares = map (^2) [1..]

oddSquares = filter odd allSquares

smallerThan = takeWhile (<10000) oddSquares

sumOfAll = sum smallerThan


-- For all starting numbers between 1 and 100, how many Collatz chains have a length greater than 15?
chain :: Integer -> [Integer]
chain 1 = [1]
chain n
  | even n = n:chain (n `div` 2)
  | odd n  = n:chain (n+3 + 1)

    




                     



