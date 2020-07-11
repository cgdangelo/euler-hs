-- A palindromic number reads the same both ways. The largest palindrome made
-- from the product of two 2-digit numbers is 9009 = 91 × 99.

-- Find the largest palindrome made from the product of two 3-digit numbers.

import           Data.Char

digitsToList :: Int -> [Int]
digitsToList = map digitToInt . show

isPalindrome :: Int -> Bool
isPalindrome n = reverse (digitsToList n) == digitsToList n

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' n = n == reverse n

ans =
  maximum $ filter isPalindrome $ [ x * y | x <- [0 .. 999], y <- [0 .. 999] ]

main :: IO ()
main = print ans
