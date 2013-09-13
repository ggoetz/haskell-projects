module Main where

import System.Environment (getArgs)

collatzs :: Int -> [Int]
collatzs n
    | n == 1    = [1]
    | even n    = n : (collatzs $ quot n 2)
    | otherwise = n : (collatzs $ 3*n + 1)

main :: IO()
main = do
    args <- getArgs
    case args of
        []    -> print $ collatzs 100
        (x:_) -> print $ collatzs $ read x