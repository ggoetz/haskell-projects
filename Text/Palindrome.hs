module Main where

main :: IO()
main = interact checkIfPalindrome

checkIfPalindrome :: String -> String
checkIfPalindrome contents = unlines (map (\xs -> if isPalindrome xs then "palindrome" else "not a palindrome") (lines contents))
    where isPalindrome xs = xs == reverse xs