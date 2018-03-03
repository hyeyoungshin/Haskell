data HList a = Nil | Cons a HList a

data HList' a = L (List a) | R (Stream a)
