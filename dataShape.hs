-- 03.06.2018

-- Shaping up

-- data Shape = Circle Float Float Float | Rectangle Float Float Float Float

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- Haskell doesn't know how to display Shape data type as a string (yet)


-- to make `Shape` part of the `Show` type class, we modify it:
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving (Show)

-- if we add `deriving` at the end of a data declaration, Haskell automatically
-- makes that type part of the `Show` type class



-- value constructors are functions, so we can map them, partially apply
-- them, and so on

-- if we want a list of concentric circles with different radii, we can do:


