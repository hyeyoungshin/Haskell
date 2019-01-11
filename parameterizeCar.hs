-- 03.06.2018

-- Should We Parameterize Car?

-- we use type parameters when data type would work regardless
-- of the type of the value it holds (like some kind of box)

data Car = Car { company :: String
               , model :: String
               , year :: Int
               } deriving (Show)

data Car a b = Car { company :: a
                   , model :: b
                   , year :: c
                   } deriving (Show)

-- would we benefit from this? no



-- we use type parameters when the type that's contained inside
-- the data type's various value constructors isn't that
-- important for the type to work


-- another example of a parameterized type is `Map k v` from
-- `Data.Map`
-- the `k` is the type of the keys in a map, and `v` is the
-- type of the values

-- having maps parameterized enables us to have mappings from
-- any type to any other type, as long as the type of the key is
-- part of the `Ord` type class

-- data (Ord k) => Map k v = ..

-- however, it is a convention in Haskell to never add type calss
-- constraints in data declarations
-- because if we don't have the constraint in the data declaration
-- we don't need to put it in the type declarations of functions
-- that don't care whether the keys can be ordered

-- so put `(Ord k) =>` into the function type declarations 

