module GetSum where

import           System.IO

prompt :: String -> IO String
prompt text = do
    putStr text
    hFlush stdout
    getLine

main :: IO ()
main = do a <- prompt "First value: "
          let firstValue = read a :: Double
          b <- prompt "Second value: "
          let secondValue = read b :: Double
          let result = firstValue + secondValue
          putStrLn ("Sum of values: " ++ show result)
