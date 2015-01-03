-- Hyeyoung's first Haskell program

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x  -- expression not statement
                        else x*2 -- "else part is mandatory"

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brien = "It's a me, Conan O'Brien!"

boombang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]



