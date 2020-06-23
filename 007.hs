-- What is the 10 001st prime number?

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n = n `mod` 2 /= 0 && all (\x -> n `mod` x /= 0) [3,5 .. ceiling $ sqrt $ fromIntegral n]

ans = filter isPrime [1..] !! 10000

main :: IO ()
main = putStrLn $ show ans
