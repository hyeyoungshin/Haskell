-- Hyeyoung's first Haskell program

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- Haskell's if is an expression that must return a value, and not a statement
doubleSmallNumber x = if x > 100
                      then x  
                      else x*2 

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

doubleSmallNumber'' x = doubleSmallNumber x + 1

conanO'Brien = "It's a me, Conan O'Brien!"

boombang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

factorial :: Integer -> Integer
factorial n = product [1..n]

factorial' :: Int -> Int
factorial' n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r



