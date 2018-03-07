-- 03.04.2018

-- Mapping Keys to Values (p.98)

phoneBook =
  [("betty", "555-2938")
  , ("bonnie", "425-2222")
  , ("patsy", "245-6624")
  , ("lucille", "203-2928")
  , ("wendy", "245-6644")
  , ("penny", "853-2492")]

-- looks up the value given a key
-- not sure why i need $ in front of `xs`
-- if i don't put it there, type error

-- maybe it is because when composing functions,
-- `filter` should remain as a function, so
-- we curry filter by giving just a predicate
-- then filter returns a function that takes
-- a list and gives you back the filtered list

-- findKey :: (Eq k) => k -> [(k, v)] -> v
-- findKey key xs = snd . head . filter (\(k, v) -> key == k) $ xs
-- is the same with
-- `findKey key xs = snd (head (filter (\(k, v) -> key == k)  xs))`

-- what if the key we're looking for isn't in the dictionary?
-- we might try getting the head of an empty list
-- use `Maybe` data type

-- findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
-- findKey key [] = Nothing
-- findKey key ((k,v):xs)
--  | key == k = Just v
--  | otherwise = findKey key xs


-- using `foldr`

findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key xs = foldr (\ (k, v) acc -> if k == key then Just v else acc) Nothing xs

-- this function is equivalent to `lookup` from Data.List






 
