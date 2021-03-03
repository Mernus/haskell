module FirstLab (results) where

import           Data.Map      as M
import           Data.String
import           Data.Typeable
import           Functions
import           GetType


typeHelp :: String
typeHelp = "Data and Types: "

funcsHelp :: String
funcsHelp = "Functions: "

emptyString :: String
emptyString = ""

returnString :: [Char] -> String
returnString var = var


formatExpr :: Show var_type => var_type -> String
formatExpr var = "Expression: " ++ show var


results = M.fromList([
    (typeHelp, emptyString)
    (formatType (typeOf var_1), formatExpr var_1),
    (formatType (typeOf var_2), formatExpr var_2),
    (formatType (typeOf var_3), formatExpr var_3),
    (formatType (typeOf var_4), formatExpr var_4),
    (formatType (typeOf var_5), formatExpr var_5),
    (formatType (typeOf var_6), formatExpr var_6),
    (formatType (typeOf var_7), formatExpr var_7),
    (formatType (typeOf var_8), formatExpr var_8),
    (formatType (typeOf var_9), formatExpr var_9),
    (formatType (typeOf var_10), formatExpr var_10),
    (funcsHelp, emptyString),
    (returnString "max3 3 9 6", formatResult max3Result),
    (returnString "min3 21 92 10", formatResult min3Result),
    (returnString "sort2 5 3", formatResult sort2Result),
    (returnString "bothTrue True False", formatResult bothTrueResultNotTrue),
    (returnString "bothTrue True True", formatResult bothTrueResultTrue),
    (returnString "solve2 2.0 7.2", formatResult solve2ResultExists),
    (returnString "solve2 0.0 0.0", formatResult solve2ResultInfinite),
    (returnString "solve2 0.0 7.2", formatResult solve2ResultNone)
  ])
