-- 03.03.2018

-- Strict Left Folds

-- using `foldl` sometimes lead to stack overflow errors
-- for example
-- `foldl (+) 0 (replicate 1000000 1)`

-- Haskell is lazy, and so it defers actual computation of values for as long as possible
-- when we use `foldl`, Haskell doesn't compute the actual accumulator on every step
-- instead, it defers its evaluation
-- in the next step, it again doesn't evaluate the accumulator, but defers the evaluation
-- it also keeps the old deferred computation in memory, because the new one often refers
-- to its result

-- foldl (+) 0 [1,2,3] =
-- foldl (+) (0+1) [2,3] =
-- foldl (+) ((0+1)+2) [3] =
-- foldl (+) (((0+1)+2)+3) [] =
-- ((0+1)+2)+3 = 
-- (1+2)+3 =
-- (3+3) =
-- 6

-- foldl' (+) 0 [1,2,3] =
-- foldl' (+) 1 [2,3] =
-- foldl' (+) 3 [3] =
-- foldl' (+) 6 [] =
-- 6
