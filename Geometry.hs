-- 03.05.2018

-- Makeing Our Own Modules

-- we saya module *exports* functions
-- when you import a module, you can use the functions that it exports

-- a module can also define functions that it uses internally,
-- but we can see and use only the ones that it exports



-- at the begining of a module, we specify the module name:

module Geometry

-- we specify the functions that it exports:

( sphereVolume
, sphereArea
, cubeVolume
, cubeArea
, cuboidArea
, cuboidVolume
) where

-- then we can add the functions:  

sphereVolume :: Float -> Float
sphereVolume radius = (4.0 / 3.0) * pi * (radius ^ 3)

sphereArea :: Float -> Float
sphereArea radius = 4 * pi * (radius ^ 2)

cubeVolume :: Float -> Float
cubeVolume side = cuboidVolume side side side

cubeArea :: Float -> Float
cubeArea side = cuboidArea side side side

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume a b c = rectArea a b * c

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea a b c = rectArea a b * 2 + rectArea a c * 2 + rectArea c b * 2


rectArea :: Float -> Float -> Float
rectArea a b = a * b



-- when making a module, we usually export only those functions that act
-- as a sort of interface to our module so that the implementation is
-- hidden

-- to use this module, do `import Geometry`
-- Geometry.hs must be in the same folder as the module that's importing
-- it



