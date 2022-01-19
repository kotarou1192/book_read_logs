doubleMe x = x + x
doubleUs x y = x*2 + y*2
doubleSmallNumber x = if x > 100
    then x
    else x*2


tellNumber :: Int -> String
tellNumber 1 = "ONE"
tellNumber 2 = "TWO"
tellNumber 3 = "THREE"
tellNumber x = show x ++" is bigger than 3"


tellNumber' :: Int -> String
tellNumber' x
    |x < 3 = "lower than 3"
    |x == 3 = "THREE"
    |otherwise = show x ++" is bigger than 3"

repeat' :: a -> [a]
repeat' x = x : repeat' x

take' :: Int -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ []   = []
take' n (x:xs) = x : take' (n-1) xs

fact :: Int -> Int
fact x
    |x <= 0 = 1
fact x = x * fact (x - 1)

factList :: Int -> [Int]
factList x
    |x == 0 = []
factList x = x * x : factList(x-1)

greatestCommonDivisor :: Int -> Int -> Int
greatestCommonDivisor x y
    | x == 0 = 0
    | y == 0 = 0
    | x <= 1 = 1
    | y <= 1 = 1
    |otherwise = maximum [a |a <- div x, a `elem` div y , a /= 1]
    where div x = [ n |n <- [1..x],x `mod` n == 0]


greatestCommonDivisor' :: Int -> Int -> Int
greatestCommonDivisor' x y
    |x `mod` y == 0 = y
    |otherwise = greatestCommonDivisor' y (x `mod` y)