divisores :: Int -> Int -> Int -> Int 
divisores x y suma 
    | y == 0        = suma
    | mod x y == 0  = divisores x (y - 1) (suma + 1)
    | otherwise     = divisores x (y - 1) suma 

primos :: Int -> Bool 
primos x 
    | x < 2     = False 
    | divisores x x 0 > 2   = False 
    | otherwise =   True 

listaPrimos :: Int -> Int -> [Int]
listaPrimos x y = [ x | x <- [x..y], primos x ]

