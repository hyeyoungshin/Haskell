
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
{-
quicksort x:xs
 | (hd xs) <= x = (hd xs) : quicksort (x:(tl xs))
 | otherwise    = x : (hd xs) : quicksort xs
-}
quicksort (x:xs) =
  let smallerOrEqual = [a | a <- xs, a <= x]
      larger = [a | a <- xs, a > x]
  in quicksort smallerOrEqual ++ [x] ++ quicksort larger
         
   


                  
   
