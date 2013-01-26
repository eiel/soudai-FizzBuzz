import Control.Monad

main = do
  putStr "please enter an integer:"
  number <- fmap read $ getLine
  putStrLn . fizzbuzz $ number
  -- forM_ [1..number] $ \n ->
  --       putStrLn . fizzbuzz $ n

fizzbuzz :: Int -> String
fizzbuzz n | n `mod` 15 == 0 = "FizzBuzz"
           | n `mod`  5 == 0 = "Buzz"
           | n `mod`  3 == 0 = "Fizz"
           | otherwise       = show n
