module Cbn1
( takeThree
, isLongerThan
) where

takeThree :: [Int] -> [Int]
takeThree [] = error "empty list" 
takeThree (x:xs) = x: takeTwo xs

takeTwo :: [Int] -> [Int]
takeTwo [] = error "empty list"
takeTwo (x:xs) = x: takeOne xs

takeOne :: [Int] -> [Int]
takeOne [] = error "empty list"
takeOne (x:xs) = [x]

isLongerThan :: [Int] -> Int -> Bool
[] `isLongerThan` n
  | n == 0 = True
  | n > 0  = False
(x:xs) `isLongerThan` n
  | n == 0 = False
  | n > 0  = xs `isLongerThan` (n-1)




