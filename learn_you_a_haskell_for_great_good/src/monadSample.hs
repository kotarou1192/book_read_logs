{-# LANGUAGE BlockArguments #-}

import Data.Maybe

-- すごHにあるサンプルを写経したもの
-- around p.291

type Birds = Int

type Pole = (Birds, Birds)

landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (left, right)
  | abs ((left + n) - right) < 4 = Just (left + n, right)
  | otherwise = Nothing

landRight :: Birds -> Pole -> Maybe Pole
landRight n (left, right)
  | abs (left - (right + n)) < 4 = Just (left, right + n)
  | otherwise = Nothing

banana :: Pole -> Maybe Pole
banana _ = Nothing

routine = do
  start <- return (0, 0)
  first <- landLeft 1 start
  second <- landRight 4 first
  third <- landLeft (-1) second
  landRight (-2) third

main = do
  let result = do routine
  putStrLn if isNothing result then "fall!" else "safe!"
