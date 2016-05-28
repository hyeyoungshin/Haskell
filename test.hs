data Color = Red | Green | Blue | Indigo | Violet
data Point a = Pt a a

Pt 2.0 3.0 :: Point Float
Pt 'a' 'b' :: Point Char
Pt True False :: Point Bool

