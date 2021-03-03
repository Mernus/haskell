module GetType where

import           Data.Typeable


formatType :: Show var_type => var_type -> String
formatType varType = "Type: " ++ show varType ++ ";"


var_1 :: ((Char, Integer), String, [Double])
var_1 = (('c', 20), "somestr", [2.3, 0.5, 1.2])

var_2 :: [(Double, Bool, (String, Integer))]
var_2 = [
  (2.3, True, ("somestr", 2)),
  (0.3, False, ("someanotherstr", 1))
  ]

var_3 :: ([Integer],[Double],[(Bool,Char)])
var_3 = ([1, 3, 10], [2.7, 0.18], [(True, 'c'), (False, 'a')])

var_4 :: [[[(Integer,Bool)]]]
var_4 = [[[(1, True), (0, False)], [(3, True)]], [[(1, False)]]]

var_5 :: (((Char,Char),Char),[String])
var_5 = ((('a', 'b'), 'c'),["sample", "samplestr"])

var_6 :: (([Double],[Bool]),[Integer])
var_6 = (([1.1, 2.2, 3.3], [True, False]), [1, 2, 3])

var_7 :: [(Integer, (Integer,[Bool]))]
var_7 = [(1, (0, [False, True])), (2, (0, [True]))]

var_8 :: (Bool,([Bool],[Integer]))
var_8 = (True, ([True, False], [1]))

var_9 :: [([Bool],[Double])]
var_9 = [([True, False], [8.5, 1.2]), ([False], [9.0])]

var_10 :: [([Integer],[Char])]
var_10 = [([1, 2], ['a']), ([1], ['b', 'c'])]
