-- and' function takes a list of Bool values and returns False if one of more elements are False;
-- otherwise, it returns True

my_and' :: [Bool] -> Bool
my_and' = foldr (\b acc -> b && acc) True

and' :: [Bool] -> Bool
and' bs = foldr (&&) True bs

-- and' [True, False, True]
-- will be
-- True && (False && (True && True))






