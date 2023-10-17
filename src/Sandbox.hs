{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Sandbox where
import Data.Char (toUpper)
import Data.Void (Void)
import Control.Monad (void)

x :: Int
x = 1

y :: String
y = "Bulbasaur"

third :: (a, b, c) -> c
third (_, _, c) = c

-- nth :: [a] -> Int -> a
-- nth [l] n
--     | n == 0 = empty
--     | n == 1 = h
--      nth [a] n = nth t (n - 1)
  



