import Data.List

wordNums :: String -> [(String, Int)]

wordNums = map (\ws -> (head ws, length ws)) . group . sort . words



-- takes two lists and tells us if the first list is wholly contained anywhere in the second list
-- for instance, needles [3,4] [1,2,3,4,5] = True

isIn :: (Eq a) => [a] -> [a] -> Bool
isIn needle haystack = any (isPrefixOf needle) (tails haystack)
