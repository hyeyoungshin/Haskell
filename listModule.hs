import Data.List

-- tells us how many unique elements a list has
-- Data.List exports `nub` which takes a list and weeds out
-- duplicate elements
-- length . nub == \xs => length (nub xs)

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub
