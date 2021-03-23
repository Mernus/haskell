module FileContent where

import           System.Environment
import           System.IO


main :: IO ()
main = do args <- getArgs
          let filename = head args
          handle <- openFile filename ReadMode
          contents <- hGetContents handle
          putStr contents
