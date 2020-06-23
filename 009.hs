-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

-- a^2 + b^2 = c^2

-- For example, 32 + 42 = 9 + 16 = 25 = 52.

-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

ans = [a * b * c | c <- [1..], b <- [1..c], a <- [1..b], a < b, b < c, a^2 + b^2 == c^2, a + b + c == 1000]

main :: IO ()
main = putStrLn $ show ans
