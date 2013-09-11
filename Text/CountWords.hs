module Main where

import Data.List

countNumberOfWords :: String -> Int
countNumberOfWords = length . words

main :: IO()
main = do
    line <- getLine
    print $ countNumberOfWords line