-- suppose we have a string that contains a bunch of words and we want to know
-- how many times each word appears in the string by using functions from `Data.List`
-- 1. `words` : converts a string into a list of strings where each string is one word
-- 2. `group` : groups together words that are identical
-- 3. `sort`  : takes a list of things that can be ordered and returns a new list that
----------------is ike the old one, but ordered from smallest to largest

import Data.List

wordNums :: String -> [(String, Int)]
wordNums = map (\l -> (head l, length l)) .  group . sort . words 
