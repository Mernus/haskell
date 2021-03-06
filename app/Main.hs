module Main where

import           Data.Foldable       (for_)
import           Data.Map            as M
import           LabsReportGenerator

main :: IO ()
main =
  for_ (M.toList results) $ \(q,a) ->
    do putStrLn ("\n  " ++ q ++ "  " ++ a ++ "\n")
