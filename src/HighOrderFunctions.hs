-- Lab 5.1
module HighOrderFunctions where

import           Data.List
import           Data.Typeable

totalAndCount :: Fractional a => [a] -> (a, Int)
totalAndCount xs = foldr (\x (total, counter) -> (total + x, counter + 1)) (0, 0) xs
average :: Fractional a => [a] -> a
average [] = error "Bad param"
average xs = let (total, counter) = totalAndCount xs in (total / fromIntegral counter)
averageResult :: (Fractional a) => a
averageResult = average [2.0, 2.2, 4.6, 3.0, 9.0]


dotProduct :: Fractional a => [a] -> [a] -> a
dotProduct x y = foldr (+) 0 $ zipWith (*) x y
dotProductResult :: Fractional a => a
dotProductResult = dotProduct [1, 2] [3.2, 4.5, 1.0]


evenCount :: [Int] -> Int
evenCount xs = foldr (\x -> if even x then (+1) else id) 0 xs
evenCountResult :: Int
evenCountResult = evenCount [2, 4, 3, 1, 12]


quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = quickSort ys ++ x : quickSort zs
                    where (ys, zs) = partition (< x) xs
quickSortResult :: [Double]
quickSortResult = quickSort [3.2, 4.5, 1.2, 7.0]


compareFunc a b
            | even a = LT
            | otherwise = GT
compareSort :: Ord a => (a -> a -> Ordering) -> [a] -> [a]
compareSort _ []    = []
compareSort func xs = sortBy func xs
compareSortResult :: [Int]
compareSortResult = compareSort compareFunc [1, 2, 3, 4, 5, 6]
