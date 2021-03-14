module ListGenerate where

import           Data.Typeable


generateNatural :: Integer -> [Integer]
generateNatural 0 = []
generateNatural n = generateNatural(n-1)++[n]
generateNatural5 :: [Integer]
generateNatural5 = generateNatural 5


generateOddNatural :: Integer -> [Integer]
generateOddNatural 0 = []
generateOddNatural n = generateOddNatural(n-1)++[n*2-1]
generateOddNatural5 :: [Integer]
generateOddNatural5 = generateOddNatural 5


generateEvenNatural :: Integer -> [Integer]
generateEvenNatural 0 = []
generateEvenNatural n = generateEvenNatural(n-1)++[2*n]
generateEvenNatural5 :: [Integer]
generateEvenNatural5 = generateEvenNatural 5


generateSquareNatural :: Integer -> [Integer]
generateSquareNatural 0 = []
generateSquareNatural n = generateSquareNatural(n-1)++[n*n]
generateSquareNatural5 :: [Integer]
generateSquareNatural5 = generateSquareNatural 5


generateFactor :: Integer -> [Integer]
generateFactor 0 = []
generateFactor n = generateFactor(n-1)++[n*n-1]
generateFactorNatural5 :: [Integer]
generateFactorNatural5 = generateFactor 5


generatePowerOfTwo :: Integer -> [Integer]
generatePowerOfTwo 0 = []
generatePowerOfTwo n = generatePowerOfTwo(n-1)++[2^n]
generatePowerOfTwo5 :: [Integer]
generatePowerOfTwo5 = generatePowerOfTwo 5


generateTriangleNumber :: Integer -> [Integer]
generateTriangleNumber 0 = []
generateTriangleNumber n = generateTriangleNumber(n-1)++[n*(n+1)*0,5]
generateTriangleNumber5 :: [Integer]
generateTriangleNumber5 = generateTriangleNumber 5


generatePyramidNumber:: Integer -> [Integer]
triangle 1 = 1
triangle n = n+triangle(n-1)
pyramid 1 = 1
pyramid n = triangle(n)+pyramid(n-1)
generatePyramidNumber 0 = []
generatePyramidNumber n = generatePyramidNumber(n-1)++[pyramid(n)]
generatePyramidNumber5 :: [Integer]
generatePyramidNumber5 = generatePyramidNumber 5
