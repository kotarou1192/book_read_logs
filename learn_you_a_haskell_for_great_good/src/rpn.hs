solveRPN :: String -> Double
solveRPN = head . foldl foldingFunction [] . words
  where
    foldingFunction (x : y : xs) "*" = (x * y) : xs
    foldingFunction (x : y : xs) "+" = (x + y) : xs
    foldingFunction (x : y : xs) "-" = (x - y) : xs
    foldingFunction (x : y : xs) "/" = (x / y) : xs
    foldingFunction (x : y : xs) "^" = (x ** y) : xs
    foldingFunction (x : y : xs) "ln" = log x : xs
    foldingFunction xs "sum" = [sum xs]
    foldingFunction xs numberString = read numberString : xs
