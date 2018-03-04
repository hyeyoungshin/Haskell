-- Needle in the Haystack (p. 91)

-- we will make a function that takes two lists and tells us if the first list is wholly contained
-- anywhere in th second list

-- for example,
-- [3,4] is contained in [1,2,3,4,5]
-- but [2,5] isn't

-- we use functions from Data.List
-- 1. tails : takes a list and successively applies the tail function to that list
------------- for example,
------------- `tails "party"` returns
------------- ["party", "arty", "rty", "ty", "y", ""]
-- 2. isPrefixOf : takes two lists and tells us if the second one starts with the first one
------------------ for example,
------------------ `"hawaii" `isPrefixOf` "hawaii joe" returns
------------------ True
-- 3. any        : takes a predicate and a list, and tells us if any element from the list satisfies
------------------ the predicate
------------------ for example,
------------------ `any (> 4) [1,2,3]` returns
------------------ False

import Data.List

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` haystack = any (needle `isPrefixOf`) (tails haystack)

-- This function is provided in Data.List under the name `isInfixOf`