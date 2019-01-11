-- 03.06.2018

-- Record

-- each record field is a fuction
-- for example,
-- :t flavor
-- flavor :: Person -> String

data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
                     , phoneNumber :: String
                     , flavor :: String} deriving (Show)


data Car = Car { company :: String
               , model :: String
               , year :: Int
               } deriving (Show)






