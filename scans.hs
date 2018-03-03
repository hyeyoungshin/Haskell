-- how many elements does it take for the sum of the square roots of
-- all natural numbers to exceed 1000?

-- use `takeWhile` instead of `filter` because `filter` wouldn't
-- cut off the resulting list once a number that's equal to or
-- over 1,000 is found;
-- we know the list is ascending, but `filter` doesn't.

sqrtSums :: Int
sqrtSums = length (takeWhile (< 1000) (scanl1 (+) (map sqrt [1..]))) + 1
                   
