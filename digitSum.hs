-- 03.03.2018

-- figure out the first natural number such that the sum of its digits equals 40

-- first make a function that takes a number and tells the sum of its digits
-- use `show` which takes a number and converts it into a string
-- and `digitToInt` from Data.Char 
import Data.Char
import Data.List

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

-- use the `find` from Data.List to find the first natural number
-- :t find
-- find :: (a -> Bool) -> [a] -> Maybe a

firstTo40 :: Maybe Int
firstTo40 = find (\x -> digitSum x == 40) [1..]

-- more general
-- can this function go into an infinite loop?
-- `firstTo 70` returns 79999999 after running awhile
-- `firstTo 80` hasn't returned yet, but it may later?

firstTo :: Int -> Maybe Int
firstTo sum = find (\x -> digitSum x == sum) [1..]
