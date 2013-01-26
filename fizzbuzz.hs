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

-- 余剰演算を利用しない FizzBuzzを作れって @sugarsupot にいわれたので
data Fizzbuzz = Number | Fizz | Buzz | FizzBuzz

-- print $ take 100 $ fizzbuzz2
fizzbuzz2 :: [String]
fizzbuzz2 = map logic $ zip [1..] source
  where
    source = cycle [Number, Number, Fizz, Number, Buzz,
                    Fizz, Number, Number, Fizz, Buzz,
                    Number, Fizz, Number, Number, FizzBuzz]
    logic :: (Int, Fizzbuzz) -> String
    logic (_, Fizz)     = "Fizz"
    logic (_, Buzz)     = "Buzz"
    logic (_, FizzBuzz) = "FizzBuzz"
    logic (n, _)        = show n
