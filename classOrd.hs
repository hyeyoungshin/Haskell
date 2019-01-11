-- 03.07.18

-- Order in the Court!

-- we can derive instances for the `Ord` type class, which is for
-- types that have values that can be ordered

-- if we compare two values of the same type that were made using
-- different constructors, the value that was defined first is
-- considered smaller

-- for example,

data Bool = False | True deriving (Ord)

-- because the `False` value constructor is specified first and
-- the `True` value constructor is specified after it, we can
-- consider `True` as greater than `False`

-- False < True
-- True

-- Just (*3) > Just (*2)
-- ??
-- (*3) and (*2) are functions, which are not instances of `Ord`
