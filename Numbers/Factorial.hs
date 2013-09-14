module Main where

factorial :: Int -> Integer
factorial n = foldl (*) 1 [1 .. toInteger n]

main :: IO()
main = do
    x <- getLine
    print $ factorial $ read x