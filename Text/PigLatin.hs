module Main where

import Data.List

{------------------------------------------------------
This function converts the words of a string into their
pig-latin translation.
-------------------------------------------------------}
pigLatinify :: String -> String
pigLatinify xs = unwords $ map toPigLatin (words xs)

{------------------------------------------------------
This function converts a single word into its pig-latin
equivalent. Read Wikipedia for more information on the 
rules of translation to pig-latin.
------------------------------------------------------}
toPigLatin :: String -> String
toPigLatin [] = []
toPigLatin (x:xs)
    | isVowel x = (x:xs) ++ "way"
    | otherwise = let (xi,xf) = findInitConsonnantCluster xs 
                  in xf ++ [x] ++ xi ++ "ay"

isVowel :: Char -> Bool
isVowel x = x `elem` "aeiouyAEIOUY"

{------------------------------------------------------
This function splits a word into its initial consonnant
cluster and the remainder of the word.
------------------------------------------------------}
findInitConsonnantCluster :: String -> (String, String)
findInitConsonnantCluster [] = ([],[])
findInitConsonnantCluster (x:xs)
    | isVowel x = ([],x:xs)
    | otherwise = let (xi, xf) = findInitConsonnantCluster xs
                  in (x:xi, xf)

main :: IO()
main = do
    s <- getContents
    let r = map pigLatinify (lines s)
    putStr $ unlines r