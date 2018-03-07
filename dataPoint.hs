-- 03.06.2018

-- Improving Shape with the Point Data Type

-- make an intermediate data type that defines a point in two-dimensional
-- space

data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

-- notice when defining a point, we used the same name for the data type
-- and the value constructor
-- it is common if there is only one value constructor

area :: Shape -> Float
area (Circle _ r) = pi * r ^ 2
area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- a function that nudges a shape:
-- `nudge` takes a shape, the amount to move it on the x axis, and the
-- amount to move it on the y axis
-- returns a new shap that has the same dimensions but is located
-- somewhere else

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x1 y1) r) a b = Circle (Point (x1+a) (y1+b)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b =
  (Rectangle (Point (x1+a) (y1+b)) (Point (x2+a) (y2+b)))



  
