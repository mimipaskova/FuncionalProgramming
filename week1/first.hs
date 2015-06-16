add x y  = x + y

evenn :: Integer -> Bool
evenn number = if number `mod` 2 == 0 then True else False

oddn :: Integer -> Bool
oddn number = if number `mod` 2 /= 0 then True else False

bmi :: Double -> Double -> Double
bmi height weight = weight / ((height / 100) ^ 2)

deg2Rad, rad2Deg :: Double -> Double
deg2Rad degree = (degree /180 ) * pi

rad2Deg radians = (radians / pi) * 180

isTriangle, isTriangle1 :: Int -> Int -> Int ->  Bool
isTriangle  a b c = if (a + b > c) && (a + c > b) && (b + c > a) && a > 0 && b > 0 && c > 0 then True else False

isTriangle1  a b c = (a + b > c) && (a + c > b) && (b + c > a) && a > 0 && b > 0 && c > 0 

perimeter :: Double -> Double -> Double -> Double
perimeter a b c = a + b + c

area :: Double -> Double -> Double -> Double
area a b c = sqrt(((perimeter a b c ) / 2) * ((perimeter a b c)/2 - a) * ((perimeter a b c)/2 - b) * ((perimeter a b c)/2 - c))

calculate sign x y = if sign == '+'
					then x + y else
					if sign == '-'
					then x - y else
					if sign == '*'
					then x * y else
					error "Unknown operator!"

-- convert first second = if first == 'usd'
-- 						then if second == 'bgn'