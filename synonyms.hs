-- 03.07.18

import qualified Data.Map as Map

-- Type Synonyms

-- `[Char]` and `String` types are equivalent and interchangeable
-- this is implemented with type synonyms

-- here's how standard library defines `String` as a synonym for
-- `[Char]`

-- type String = [Char]

-- `type` keyword might be misleading, because a new type is not
-- being created (that's done with the `data` keyword)

-- this defines a synonym for an existing type

-- toUpperString :: [Char] -> [Char]
-- toUpperString :: String -> String

-- these two are essentially same

-- phoneBook :: [(String, String)]

-- the type of phoneBook is [(String, String)]

-- let's make a type synonym to coonvey some more information in
-- the type declaration

-- type PhoneBook = [(String, String)]

-- Now the type declaration of our phonebook can be

-- phoneBook :: PhoneBook

-- let's make a type synonym for `String` as well

type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]


inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name, pnumber) `elem` pbook



-- type synonyms can also be parameterized

type AssocList k v = [(k, v)]

-- findVal :: (Eq k) => k -> AssocList k v -> Maybe v

-- AssocList is a type constructor that takes two types and
-- produces a concrete type -- for instance,
-- AssocList Int String



-- we can partially apply type parameters and get new type
-- constructors from them
-- for example, if we wanted a type that represents a map
-- from integers to something, we could do:
type IntMap v = Map.Map Int v

-- or equivantly,
-- type IntMap = Map Int

