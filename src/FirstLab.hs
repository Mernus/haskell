module FirstLab (results) where

import           Data.Map      as M
import           Data.Typeable
import           Functions
import           GetType


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
    (formatExpr ("type", show (typeOf var_1)), formatExpr ("expr", show var_1)),
    (formatExpr ("type", show (typeOf var_2)), formatExpr ("expr", show var_2)),
    (formatExpr ("type", show (typeOf var_3)), formatExpr ("expr", show var_3)),
    (formatExpr ("type", show (typeOf var_4)), formatExpr ("expr", show var_4)),
    (formatExpr ("type", show (typeOf var_5)), formatExpr ("expr", show var_5)),
    (formatExpr ("type", show (typeOf var_6)), formatExpr ("expr", show var_6)),
    (formatExpr ("type", show (typeOf var_7)), formatExpr ("expr", show var_7)),
    (formatExpr ("type", show (typeOf var_8)), formatExpr ("expr", show var_8)),
    (formatExpr ("type", show (typeOf var_9)), formatExpr ("expr", show var_9)),
    (formatExpr ("type", show (typeOf var_10)), formatExpr ("expr", show var_10)),
    (formatExpr ("expr",  "`max3 3 9 6`;"), formatExpr ("res", show max3Result)),
    (formatExpr ("expr",  "`min3 21 92 10`;"), formatExpr ("res", show min3Result)),
    (formatExpr ("expr",  "`sort2 5 3`;"), formatExpr ("res", show sort2Result)),
    (formatExpr ("expr",  "`bothTrue True False`;"), formatExpr ("res", show bothTrueResultNotTrue)),
    (formatExpr ("expr",  "`bothTrue True True`;"), formatExpr ("res", show bothTrueResultTrue)),
    (formatExpr ("expr",  "`solve2 2.0 7.2`;"), formatExpr ("res", show solve2ResultExists)),
    (formatExpr ("expr",  "`solve2 0.0 0.0`;"), formatExpr ("res", show solve2ResultInfinite)),
    (formatExpr ("expr",  "`solve2 0.0 7.2`;"), formatExpr ("res", show solve2ResultNone))
  ])
