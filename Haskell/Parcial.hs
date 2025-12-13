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

-- Parcial 2025 (Com2)
divs :: Int -> Int -> Int 
divs n 0 = 0 
divs n x 
    | mod n x == 0 = 1 + divs n (x - 1)
    | otherwise = divs n (x - 1) 

divDiv :: Int -> Bool 
divDiv num = mod num (divs num num) == 0

armarLista :: [Int] 
armarLista = [ x | x <- [1..], divDiv x]

-- Parcial 2025 (Com2)
menor :: [Int] -> Int 
menor xs = foldl min 9999 xs 

-- Parcial 2025 (com1)
divss :: Int -> Int -> Int 
divss n 0 = 0 
divss n x 
    | mod n x == 0 = x + divss n (x - 1)
    | otherwise = divss n (x - 1)

esPerfecto :: Int -> Bool 
esPerfecto num = divss num (num - 1) == num 

armarLista1 :: [Int]
armarLista1 = [ x | x <- [1..], esPerfecto x] 
-- Si queres que sean los N primeros numeros perfectos solo hace lo siguiente
-- Agrega un parametro cualquiera a armarLista1 (ej: armarLista1 num)
-- En vez de [1..] pone [1..num] 

-- Parcial 2025 (com1)
conjuncion :: [Bool] -> Bool 
conjuncion xs = foldl (&&) True xs 