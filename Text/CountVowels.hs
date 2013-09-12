module Main where

countNumberOfVowels :: String -> Int
countNumberOfVowels xs = length $ filter isVowel xs
    where isVowel x = x `elem` "aeiouyAEIOUY"

main :: IO()
main = do
    line <- getLine
    print $ countNumberOfVowels line