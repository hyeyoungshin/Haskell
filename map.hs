-- find the largest number under 100,000 that's divisible by 3829

largestDivisible :: Integer
largestDivisible = head (filter p [99999, 99998..])
       where p x = x `mod` 3829 == 0

-- find the sum of all odd squares that are smaller than 10000 (use takeWhile function)
-- takeWhile, applied to a predicate p and a list xs, returns the longest prefix (possibly empty) of xs of elements that satisfy p:

sumOfOddSqrs :: Integer
sumOfOddSqrs = sum (takeWhile (< 10000) [x^2 | x <- [1..], odd x])

-- Collatz squence
-- . start with any natural number
-- . if the number is 1, stop
-- . if the number is even, divide it by 2
-- . if the number is odd, multiply it by 3 and add 1
-- . repeat

-- for all starting numbers between 1 and 100, how many Collatz chains have a length greater than 15?

-- first step: produce a chain
chain :: Integer -> [Integer]
chain n
  | n == 1         = [1]
  | n `mod` 2 == 0 = n: chain (n `div` 2)
  | otherwise      = n: chain (n * 3 + 1)

chain' :: Integer -> [Integer]
chain' 1 = [1]
chain' n
  | even n = n:chain'(n `div` 2)
  | odd n  = n:chain'(n*3 + 1)


numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1 .. 100]))

    
    




