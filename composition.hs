-- have a list of numbers and want to turn them all into ngative numbers

negateAll :: [Int] -> [Int]
negateAll [] = []
negateAll (x:xs) = (negate (abs x)) : negateAll xs

negateAll' :: [Int] -> [Int]
negateAll' ns = map negate $ map abs ns

negateAll_book :: [Int] -> [Int]
negateAll_book ns = map (\n -> (negate . abs) n) ns -- the parenthesis around negate abs are neccessary

