module Main where

import System.Environment (getArgs)

{- Define the Fibonacci suite as an infinite list by zipping it with itself. -}
fibonacciSuite :: [Integer]
fibonacciSuite = 1 : 1 : zipWith (+) fibonacciSuite (tail fibonacciSuite)

main :: IO()
main = do
    x <- getArgs
    case x of
        []    -> print $ fibonacciSuite !! 99
        (x:_) -> print $ fibonacciSuite !! (read x - 1)