-- 03.04.2018

-- Enter Data.Map

-- Data.Map module offers association lists that are fast
-- and many utility functions

-- Data.Map exports functions that clash with the Prelude
-- and Data.List, we use a qualified import

import qualified Data.Map as Map
import Data.Char

-- now `filter` refers to the normal `filter`
-- if we want to reference Data.Map's `filter`, we must
-- use `Map.filter`

-- `fromList` from Data.Map turns an association list into
-- a map
-- if there are duplicate keys in the original association
-- list, the duplicates are discarded

-- for example,
-- Map.fromList [("Ms", 1), ("Ms", 2) , ("Ms", 3)]
-- fromList [("Ms", 3)]

-- the type signature of `fromList` is
-- Map.fromList :: (Ord k) => [(k ,v)] -> Map.Map k a

-- an essential constraint in the Data.Map module is that
-- the keys must be orderable for efficiency

phoneBook :: Map.Map String String
phoneBook = Map.fromList $
  [("betty", "555-2938")
  , ("bonnie", "425-2222")
  , ("patsy", "245-6624")
  , ("lucille", "203-2928")
  , ("wendy", "245-6644")
  , ("penny", "853-2492")
  ]


-- make a new map from phoneBook by inserting a number
-- use `insert`
-- it takes a key, a value, and a map, and returns a new
-- extended map

-- suppose we want to represent phone numbers as list of Ints
-- make a function that does this using Data.Char's
-- `digitToInt` and `isDigit` functions

string2digits :: String -> [Int]
string2digits s = map digitToInt . filter isDigit $ s

-- extend phoneBook for a person to have several numbers

phoneBookExtended =
  [("betty", "555.2938")
  , ("betty", "342-2492")
  , ("bonnie", "452-2928")
  , ("patsy", "493-2928")
  , ("patsy", "943-2929")
  , ("patsy", "555-2111")
  , ("wendy", "939-8282")
  ]


-- if we use `fromList`, we will lose some numbers under same
-- name

-- use `fromListWith` from Data.Map instead:
-- if `fromListWith` finds the key is already there, it uses
-- the function supplied to it to join those two values into
-- one and replces the old value with the one it got by
-- passing the conflicting values to the function

-- phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
-- phoneBookToMap xs = Map.fromListWith add xs
--   where add number1 number2 = number1 ++ ", " ++ number2

-- another way to do this is to make all the values in the
-- list singleton lists and then use ++ to combine:

phoneBookToMap :: (Ord k) => [(k,a)] -> Map.Map k [a]
phoneBookToMap xs = Map.fromListWith (++) $ map (\(k, v) -> (k, [v])) xs


-- make a map from an association list of numbers, and when
-- a duplicat key is found, we want the biggest value for
-- the key

-- Map.fromListWith max [(2,3), (2,5), (2,100), (3,22), (3,11)]
-- fromList [(2,100), (3,29), (4,22)]

