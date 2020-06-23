-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

ans = foldl lcm 1 [1..20]

main :: IO ()
main = putStrLn $ show ans
