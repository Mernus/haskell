module Functions where

import           Data.Typeable


formatResult :: Show var_type => var_type -> String
formatResult res = "Result: " ++ show res ++ ";"


max3 :: Int -> Int -> Int -> Int
max3 a b c = maximum [a, b, c]
max3Result :: Int
max3Result = max3 3 9 6


min3 :: Int -> Int -> Int -> Int
min3 a b c = minimum [a, b, c]
min3Result :: Int
min3Result = min3 21 92 10


sort2 :: Int -> Int -> (Int, Int)
sort2 a b = if a > b then (b, a) else (a, b)
sort2Result :: (Int, Int)
sort2Result = sort2 5 3


bothTrue :: Bool -> Bool -> Bool
bothTrue a b = if fromEnum a + fromEnum b == 2 then True else False
bothTrueResultNotTrue :: Bool
bothTrueResultNotTrue = bothTrue True False
bothTrueResultTrue :: Bool
bothTrueResultTrue = bothTrue True True


solve2 :: Double -> Double -> (Bool, Double)
solve2 a b = if a == 0.0 then
                if b == 0.0 then (True, 0.0)
                else (False, 0.0)
              else (True, -b/a)
solve2ResultExists :: (Bool, Double)
solve2ResultExists = solve2 2.0 7.2
solve2ResultInfinite :: (Bool, Double)
solve2ResultInfinite = solve2 0.0 0.0
solve2ResultNone :: (Bool, Double)
solve2ResultNone = solve2 0.0 7.2


isParallel :: (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int) -> Bool
isParallel (x0,y0) (x1,y1) (x2,y2) (x3,y3) = (y1-y0)*(x3-x2) == (x1-x0)*(y3-y2)
