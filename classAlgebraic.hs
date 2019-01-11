-- 03.07.18

-- Any Day of the Week

-- we can use alebraic data types to make enumerations, and the
-- `Enum` and `Bounded` type classes help us with that

data Day = Monday | Tuesday | Wednesday | Thursday | Friday
         | Saturday | Sunday
         deriving (Eq, Ord, Show, Read, Bounded, Enum)

-- the `Enum` type class is for things that have predecessors
-- and successors

-- the `Bounded` type class is for things that have a lowest
-- possible value and highest possible value

-- minBound :: Day
-- Monday

-- maxBound :: Day
-- Sunday
