-- What is the index of the first term in the Fibonacci sequence to contain 1000
-- digits?

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

ans = head $ [i | (i, f) <- zip [0..] fibs, ((==1000) . length . show) f]

main :: IO ()
main = putStrLn $ show ans
