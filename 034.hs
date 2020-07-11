-- 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

-- Find the sum of all numbers which are equal to the sum of the factorial of their digits.

-- Note: as 1! = 1 and 2! = 2 are not sums they are not included.

import           Data.Char

factorial :: Int -> Int
factorial n = product [1 .. n]

digitsToDigitsList :: Int -> [Int]
digitsToDigitsList = map digitToInt . show

sumOfFactorials :: Int -> Int
sumOfFactorials = sum . map factorial . digitsToDigitsList

ans =
  sum $ [ x | x <- [1 .. 10000000], x /= 1, x /= 2, sumOfFactorials x == x ]

main :: IO ()
main = print ans
