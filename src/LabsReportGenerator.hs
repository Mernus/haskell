module LabsReportGenerator (results) where

import           Data.Map           as M
import           Data.Typeable
import           Text.Printf

import           Functions
import           GetType
import           HighOrderFunctions
import           Library
import           ListGenerate
import           MoreHardFunctions
import           Number


getHelpString :: String -> String
getHelpString stringType
          | stringType == "data" = "Data and Types: "
          | stringType == "funcs" = "Functions: "
          | stringType == "empty" = ""
          | otherwise = stringType


formatExpr :: (String, String) -> String
formatExpr (opType, var)
          | opType == "expr" = "Expression: " ++ var
          | opType == "res" = "Result: " ++ var ++ ";"
          | opType == "type" = "Type: " ++ var ++ ";"
          | otherwise = var


results = M.fromList([
    -- (formatExpr ("type", show (typeOf var_1)), formatExpr ("expr", show var_1)),
    -- (formatExpr ("type", show (typeOf var_2)), formatExpr ("expr", show var_2)),
    -- (formatExpr ("type", show (typeOf var_3)), formatExpr ("expr", show var_3)),
    -- (formatExpr ("type", show (typeOf var_4)), formatExpr ("expr", show var_4)),
    -- (formatExpr ("type", show (typeOf var_5)), formatExpr ("expr", show var_5)),
    -- (formatExpr ("type", show (typeOf var_6)), formatExpr ("expr", show var_6)),
    -- (formatExpr ("type", show (typeOf var_7)), formatExpr ("expr", show var_7)),
    -- (formatExpr ("type", show (typeOf var_8)), formatExpr ("expr", show var_8)),
    -- (formatExpr ("type", show (typeOf var_9)), formatExpr ("expr", show var_9)),
    -- (formatExpr ("type", show (typeOf var_10)), formatExpr ("expr", show var_10)),
    -- (formatExpr ("expr",  "`max3 3 9 6`;"), formatExpr ("res", show max3Result)),
    -- (formatExpr ("expr",  "`min3 21 92 10`;"), formatExpr ("res", show min3Result)),
    -- (formatExpr ("expr",  "`sort2 5 3`;"), formatExpr ("res", show sort2Result)),
    -- (formatExpr ("expr",  "`bothTrue True False`;"), formatExpr ("res", show bothTrueResultNotTrue)),
    -- (formatExpr ("expr",  "`bothTrue True True`;"), formatExpr ("res", show bothTrueResultTrue)),
    -- (formatExpr ("expr",  "`solve2 2.0 7.2`;"), formatExpr ("res", show solve2ResultExists)),
    -- (formatExpr ("expr",  "`solve2 0.0 0.0`;"), formatExpr ("res", show solve2ResultInfinite)),
    -- (formatExpr ("expr",  "`solve2 0.0 7.2`;"), formatExpr ("res", show solve2ResultNone)),
    -- (formatExpr ("expr",  "`isParallel (1,1) (2,2) (2,0) (4,2)`;"), formatExpr ("res", show isParallelTrue)),
    -- (formatExpr ("expr",  "`isIncluded (1,1,8) (2,2,1)`;"), formatExpr ("res", show isIncludedTrue)),
    -- (formatExpr ("expr",  "`isRectangular (1, 1) (1, 4) (5, 1)`;"), formatExpr ("res", show isRectangularTrue)),
    -- (formatExpr ("expr",  "`isTriangle 3 4 5`;"), formatExpr ("res", show isTriangleTrue)),
    -- (formatExpr ("expr",  "`isSorted 5 4 3`;"), formatExpr ("res", show isSortedTrue)),
    -- (formatExpr ("expr",  "`generateNatural 5`;"), formatExpr ("res", show generateNatural5)),
    -- (formatExpr ("expr",  "`generateOddNatural 5`;"), formatExpr ("res", show generateOddNatural5)),
    -- (formatExpr ("expr",  "`generateEvenNatural 5`;"), formatExpr ("res", show generateEvenNatural5)),
    -- (formatExpr ("expr",  "`generateSquareNatural 5`;"), formatExpr ("res", show generateSquareNatural5)),
    -- (formatExpr ("expr",  "`generateFactor 5`;"), formatExpr ("res", show generateFactorNatural5)),
    -- (formatExpr ("expr",  "`generatePowerOfTwo 5`;"), formatExpr ("res", show generatePowerOfTwo5)),
    -- (formatExpr ("expr",  "`generateTriangleNumber 5`;"), formatExpr ("res", show generateTriangleNumber5)),
    -- (formatExpr ("expr",  "`generatePyramidNumber 5`;"), formatExpr ("res", show generatePyramidNumber5)),
    -- (formatExpr ("expr",  "`mean [1.2, 3.4, 4.0]`;"), formatExpr ("res", printf "%.2f" meanResult)),
    -- (formatExpr ("expr",  "`deleteElem 2 [2, 3, 4]`;"), formatExpr ("res", show deleteElemResult)),
    -- (formatExpr ("expr",  "`sumTwoLists [1, 2, 3] [4, 5, 6]`;"), formatExpr ("res", show sumTwoListsResult)),
    -- (formatExpr ("expr",  "`adjacentElementsPermutation [1, 2, 3, 4]`;"), formatExpr ("res", show adjacentElementsPermutationResult)),
    -- (formatExpr ("expr",  "`removeEmpty ['Hello', '', 'test', '']`;"), formatExpr ("res", show removeEmptyResult)),
    -- (formatExpr ("expr",  "`count True [True, False, False, True, False]`;"), formatExpr ("res", show countResult)),
    -- (formatExpr ("expr",  "`makePositive [1, -2, 3, 4, -5]`;"), formatExpr ("res", show makePositiveResult)),
    -- (formatExpr ("expr",  "`removeChar 'l' 'Hello'`;"), formatExpr ("res", show removeCharResult)),
    -- (formatExpr ("expr",  "`substitute 'p' 'w' 'Kapai'`;"), formatExpr ("res", show substituteResult)),
    (formatExpr ("expr",  "`isPeriodic(bibliographicEntities!!2)`;"), formatExpr ("res", show isPeriodicResultTrue)),
    (formatExpr ("expr",  "`isPeriodic(bibliographicEntities!!0)`;"), formatExpr ("res", show isPeriodicResultFalse)),
    (formatExpr ("expr",  "`getByTitle 'SomeName'`;"), formatExpr ("res", show getByTitleResult)),
    (formatExpr ("expr",  "`getByMonth 10`;"), formatExpr ("res", show getByMonthResult)),
    (formatExpr ("expr",  "`getByMonths [10, 8]`;"), formatExpr ("res", show getByMonthsResult)),
    (formatExpr ("expr",  "`getAuthors bibliographicEntities`;"), formatExpr ("res", show getAuthorsResult)),
    (formatExpr ("expr",  "`fromInt 3`;"), formatExpr ("res", show fromIntResult)),
    (formatExpr ("expr",  "`toInt Next (Next (Next Zero))`;"), formatExpr ("res", show toIntResult)),
    (formatExpr ("expr",  "`plus(Next Zero, Next (Next Zero))`;"), formatExpr ("res", show plusResult)),
    (formatExpr ("expr",  "`mult(Next Zero, Next (Next Zero))`;"), formatExpr ("res", show multResult)),
    (formatExpr ("expr",  "`dec (Next (Next (Next Zero)))`;"), formatExpr ("res", show decResult)),
    (formatExpr ("expr",  "`numberFactorial (Next (Next (Next Zero)))`;"), formatExpr ("res", show numberFactorialResult)),
    (formatExpr ("expr",  "`average [2, 2.2, 4.6, 3, 9]`;"), formatExpr ("res", show averageResult)),
    (formatExpr ("expr",  "`dotProduct [1, 2] [3.2, 4.5, 1]`;"), formatExpr ("res", show dotProductResult)),
    (formatExpr ("expr",  "`evenCount [2, 4, 3, 1, 12]`;"), formatExpr ("res", show evenCountResult)),
    (formatExpr ("expr",  "`quickSort [3.2, 4.5, 1.2, 7.0]`;"), formatExpr ("res", show quickSortResult)),
    (formatExpr ("expr",  "`compareSort compareFunc [1, 2, 3, 4, 5, 6]`;"), formatExpr ("res", show compareSortResult))
  ])
