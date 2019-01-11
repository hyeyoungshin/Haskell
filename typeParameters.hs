-- 03.06.2018

-- Type Parameters

-- Like value constructors can take some parameters and produce
-- a new value, type constructors can take types as parameters
-- to produce new types

data Maybe a = Nothing | Just a

-- the `a` here is the type parameter
-- because there is a type parameter involved, we call `Maybe`
-- a type constructor

-- if we want to explicitly pass a type as a type parameter, we
-- must do it in the type part of Haskell, which is usually
-- after the :: symbol

-- this can come in handy if we want a value of `Just 3` to have
-- the type `Maybe Int`
-- by default, Haskell will infer `(Num a) => Maybe a` for that
-- value
-- so we can use an explicit type annotation to restrict the type

-- Just 3 :: Maybe Int


-- type parameters are useful because they allow us to make data
-- types that can hold different things
-- for instance,
-- we could make a separate `Maybe` like data type for every type
-- that it could contain:

data IntMaybe = INothing | IJust Int
data StringMaybe = SNothing | SJust String
data ShapeMaybe = ShNothing | ShJust Shape

-- Notice that the type of Nothing is `Maybe a`
-- its type is polymorphic, which means that it features type
-- variables, namely the `a`
-- if some function requires a `Maybe Int` as a parameter, we can
-- give it a `Nothing`, because `Nothing` doesn't contain a value
-- anyway

-- `Maybe a` can act like a `Maybe Int`
-- similarly, the type of the empty list is [a]
-- an empty list can act like a list of anything
