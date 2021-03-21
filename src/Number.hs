-- Lab 4.7
module Number where

import           Data.Typeable

data Number = Zero | Next Number deriving (Eq, Show, Read)


fromInt :: Int -> Number
fromInt 0 = Zero
fromInt 1 = Next Zero
fromInt n = Next (fromInt $ n-1)
fromIntResult :: Number
fromIntResult = fromInt 3


toInt :: Number -> Int
toInt Zero     = 0
toInt (Next n) = 1 + toInt n
toIntResult :: Int
toIntResult = toInt (Next (Next (Next Zero)))


plus :: (Number, Number) -> Number
plus (x, y) = fromInt $ toInt x + toInt y
plusResult :: Number
plusResult = plus (Next Zero, Next (Next Zero))


mult :: (Number, Number) -> Number
mult (x, y) = fromInt $ toInt x * toInt y
multResult :: Number
multResult = mult (Next Zero, Next (Next Zero))


dec :: Number -> Number
dec Zero     = Zero
dec (Next n) = fromInt $ toInt n - 1
decResult :: Number
decResult = dec (Next (Next (Next Zero)))


factorial :: Int -> Int
factorial n
    | n <= 0 = 1
    | otherwise = n * factorial (n-1)
numberFactorial :: Number -> Number
numberFactorial (x) = fromInt $ factorial $ toInt x
numberFactorialResult :: Number
numberFactorialResult = numberFactorial (Next (Next (Next Zero)))
