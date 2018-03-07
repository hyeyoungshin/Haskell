-- 03.06.2018

-- Exporting Our Shapes in a Module

-- you can export your data types in your custome modules
-- to do that, writeyour type along with the functions you are exporting
-- and add some parenthese that specify the value constructors that you
-- want to export, separated by commas

-- if you want to export all the value constructors for a given type
-- write two dots (..)

-- supposewe want to export our shape functions and types in a module

module Shapes
( Point (..)
, Shape (..)
, area
, nudge
, baseCircle
, baseRect
) where


data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving (Show)

baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRect :: Float -> Shape
baseRect width height = Rectangle (Point 0 0) (Point width height)


-- `Shape (..)` exports all the value constructors for `Shape`
-- this means that people who import our module can make shapes by using
-- the `Rectangle` and `Circle` value constructors
-- same as writing `Shape (Rectangle, Circle)

-- (..) is also useful when you modify or add some value constructors
-- later on

-- we could opt to not export any value constructors for `Shape` by
-- just writing `Shape` in the export statement, without the parentheses
-- this way people who import the Shape module could make shapes only by
-- using the auxiliary functions `baseCircle` and `baseRect`

