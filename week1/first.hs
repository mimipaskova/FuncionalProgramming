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



-- isValidID id = (id.lenght == 10) && sum(id)%11 = 0

-- 30  Concatenate the lists
concatenate :: [a] -> [a] -> [a]
concatenate [] second = second
concatenate first [] = first
concatenate (h:t) second = h : concatenate t second


-- 31Take all elements of a list without the last one
initt [] = error "You can't do that with the empty list!"
initt (h:[]) = []
initt (h:t) = h : initt t


-- 32 Take the first n elements from a list
takee, dropp :: Int -> [a] -> [a]
takee _ [] = []
takee 0 _ = []
takee number (h:t) = h : takee (number-1) t

-- 33. Drop the first n elements from a list
dropp _ [] = []
dropp 0 arr = arr
dropp number (h:t) = dropp (number - 1) t

-- 34. Zipping lists
zipp :: [a] -> [b] -> [(a, b)]
zipp [] [] = []
zipp arr [] = []
zipp [] arr = []
zipp (h1:t1) (h2:t2) = (h1, h2) : zipp t1 t2
