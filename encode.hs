-- 03.03.2018

-- Caesar Cipher Salad (p.92)

-- the Caesar cipher is a primitive method of encoding messages by shifting each character by a fixed
-- number of positions in the alphabet
-- we will use the whole rang of Unicode characters

-- functions from Data.Char
-- 1. ord : converts characters to their corresponding numbers
-- 2. chr : converts numbers to their corresponding characters

-- the difference between the `ord` values of two characters is equal to how far apart they are in
-- the Unicode table

-- write a function that takes a number of positions to shift and a string, and returns that string
-- where every character is shifted forward in the alphabet by that many positions

import Data.Char

encode :: Int -> String -> String
--encode offset msg = map (\ch -> chr $ ord ch + offset)  msg
encode offset msg = map (chr . (+ offset) . ord) msg
-- (chr . (+ offset) . ord) can replace the lambda

decode :: Int -> String -> String
decode offset msg = map (chr . (subtract offset) . ord) msg








