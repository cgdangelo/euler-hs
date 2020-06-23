-- Find the sum of all the primes below two million.

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n = n `mod` 2 /= 0 && all (\x -> n `mod` x /= 0) [3,5 .. ceiling $ sqrt $ fromIntegral n]

ans = sum $ filter (isPrime) [1..1999999]

main :: IO ()
main = putStrLn $ show ans
