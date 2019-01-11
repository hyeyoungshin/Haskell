-- 03.06.2018

-- Derived Instances

-- haskell can automatically make our type an instance of
-- any of the following type classes:
-- Eq, Ord, Enum, Bounded, Show, Read

-- haskell derives the behavior of our types in these contexts
-- if we use the `deriving` keyword when making our data type

-- `Show` and `Read` type classes are for things that can be converted
-- to or from strings, respectively

-- if a type's constructors have fields, their type must be part of
-- `Show` or `Read` if we want to make our type an instance of them

-- make `Person` data type a part of `Show` and `Read`:

data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     } deriving (Eq, Show, Read)


mikeD = Person {firstName = "Michael", lastName = "Diamond", age = 43}



-- `Read` is pretty much the inverse type class of `Show`. It's for
-- converting strings to values of our type

-- when we use the `read` function, we might need to use an explicit
-- type annotation to tell Haskell which type we want to get as a
-- result

mysteryDude = "Person { firstName =\"Michael\"" ++
  ", lastName =\"Diamond\"" ++
  ", age = 43}"

-- :t read
-- read :: Read a => String -> a
-- read mysteryDude
-- Person { firstName = "Michael", lastName = "Diamond", age = 43}
