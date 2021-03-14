module MoreHardFunctions where

import           Data.List
import           Data.Typeable


lenAndSum :: [Double] -> (Int,Double)
lenAndSum xs = if null xs
                then (0, 0)
                else let (s1,s2) = lenAndSum(tail xs) in (s1 + 1, s2 + head xs)

mean xs = let (s1, s2) = lenAndSum xs in (s2 / fromIntegral s1)


meanResult :: Double
meanResult = mean [1.2, 3.4, 4.0]


deleteElem :: Integer -> [Integer] -> Integer
deleteElem 1 (h:t) = h
deleteElem n (h:t) = deleteElem (n-1) t
deleteElemResult :: Integer
deleteElemResult = deleteElem 2 [2, 3, 4]


sumTwoLists :: [Integer] -> [Integer] -> [Integer]
sumTwoLists [] []           = []
sumTwoLists [] (a1:ax)      = (a1:ax)
sumTwoLists (b1:bx) []      = (b1:bx)
sumTwoLists (b1:bx) (a1:ax) = (b1+a1) : (sumTwoLists bx ax)
sumTwoListsResult :: [Integer]
sumTwoListsResult = sumTwoLists [1, 2, 3] [4, 5, 6]


adjacentElementsPermutation :: [Integer] -> [Integer]
adjacentElementsPermutation []       = []
adjacentElementsPermutation [x]      = [x]
adjacentElementsPermutation (x:y:xs) = y:x:adjacentElementsPermutation(xs)
adjacentElementsPermutationResult :: [Integer]
adjacentElementsPermutationResult = adjacentElementsPermutation [1, 2, 3, 4]


-- twopow :: Integer -> Integer
-- twopow 0 = 1
-- twopow 1 = 2
-- twopow power = if odd power
--                 then twopow . twopow . power `div` 2
--                 else 2 * twopow . twopow . (power - 1 `div` 2)
-- twopowResult :: Integer
-- twopowResult = twopow 3


removeOdd :: [Integer] -> [Integer]
removeOdd []     = []
removeOdd (x:xs) = if odd x then removeOdd xs else x:removeOdd xs
removeOddResult :: [Integer]
removeOddResult = removeOdd [1, 2, 3, 4]


removeEmpty :: [[Char]] -> [[Char]]
removeEmpty [] = []
removeEmpty xs = filter (/= "") xs
removeEmptyResult :: [[Char]]
removeEmptyResult = removeEmpty ["Hello", "", "test", ""]


count:: Eq a => a -> [a] -> Integer
count n = foldr (\x -> if n == x then (+1) else id) 0
countResult :: Integer
countResult = count True [True, False, False, True, False]


makePositive :: [Integer] -> [Integer]
makePositive []    = []
makePositive (h:t) = [abs h] ++ makePositive(t)
makePositiveResult :: [Integer]
makePositiveResult = makePositive [1, -2, 3, 4, -5]


removeChar :: Char -> String -> String
removeChar c []     = []
removeChar c [str]  = if c == str then [] else [str]
removeChar c (x:xs) = if c == x then removeChar c xs else x: removeChar c xs
removeCharResult :: [Char]
removeCharResult = removeChar 'l' "Hello"


substitute :: Char -> Char -> String -> String
substitute a b [] = ""
substitute a b (x:xs) = if x == a then b: substitute a b xs else x: substitute a b xs
substituteResult :: [Char]
substituteResult = substitute 'p' 'w' "Kapai"
