-- Using names.txt (right click and 'Save Link/Target As...'), a 46K text file 
-- containing over five-thousand first names, begin by sorting it into 
-- alphabetical order. Then working out the alphabetical value for each name, 
-- multiply this value by its alphabetical position in the list to obtain a name
-- score.

-- For example, when the list is sorted into alphabetical order, COLIN, which is
-- worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN
-- would obtain a score of 938 × 53 = 49714.

-- What is the total of all the name scores in the file?

import Data.List
import Data.Char
import Data.Ord

wordsWhen     :: (Char -> Bool) -> String -> [String]
wordsWhen p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : wordsWhen p s''
                            where (w, s'') = break p s'

charValue :: String -> Int
charValue = sum . map ((subtract 64) . ord)

main :: IO ()
main = do
    x <- readFile "p022_names.txt"
    let names = sort $ map (filter (/='"')) $ wordsWhen (==',') x
    print $ sum $ [(charValue n) * ix | (n, ix) <- zip names [1..]]
