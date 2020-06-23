-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

ans = ((^2) $ sum [1..100]) - (sum $ map (^2) [1..100])

main :: IO ()
main = putStrLn $ show ans
