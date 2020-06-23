-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

ans = sum $ filter even $ takeWhile (<4000000) fibs

main :: IO ()
main = putStrLn $ show ans
