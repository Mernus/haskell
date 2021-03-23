module NLines where

import           System.Environment
import           System.IO


main :: IO ()
main = do args <- getArgs
          let filename = head args
          let linesNum = read(args!!1) :: Int
          handle <- openFile filename ReadMode
          contents <- hGetContents handle
          let contentsList = lines contents
          let result = unlines $ take linesNum contentsList
          putStr result
