-- 2.18) Escribir un programa funcional que concatene dos listas

concatenar :: [a] -> [a] -> [a]
concatenar [] ys = ys 
concatenar (x:xs) ys = x : concatenar xs ys 

-- 2.21) Escribir un programa que devuelva la serie de Fibonacci hasta él término enésimo. 
-- Ejemplo: serie de Fibonacci = 1 1 2 3 5 8 13 … 
-- fiboc 6 = [8,5,3,2,1,1]

fiboc:: Int -> Int
fiboc 0 = 0 
fiboc 1 = 1
fiboc n = fiboc (n - 1) + fiboc (n - 2) 

fibocc :: Int -> [Int]
fibocc x = reverse [ fiboc i | i <- [0 .. x-1] ]


-- 2.28. Determinar una lista que contenga todos los puntos del plano en el rango 
-- [0..10,0..10] que estén por sobre la función identidad: f(x)=x. 

identidad :: [Int] -> [Int] -> [(Int,Int)]
identidad xs ys = [ (x , y) | x <- xs, y <- ys, x == y ]

-- Parcial
divisores :: Int -> Int -> Int
divisores n 0 = 0
divisores n x 
    | mod n x == 0 = 1 + divisores n (x - 1)
    | otherwise    = divisores n (x - 1) 

primos :: Int -> Bool 
primos n 
    | n < 2     = False 
    | divisores n n > 2 = False 
    | otherwise = True 

parcial :: [Int] -> [Int]
parcial xs = [ x | x <- xs , primos x ]

-- Perfectos

divs :: Int -> Int -> Int 
divs n 0 = 0 
divs n x 
    | resto == 0 = x + divs n (x - 1)
    | otherwise = divs n (x - 1)

    where 
        resto = mod n x

perfectos :: [Int] -> [Int]
perfectos xs = [ x | x <- xs, (divs x (x - 1)) == x ]

-- Casi perfectos 

casiPerfectos :: [Int] -> [Int]
casiPerfectos xs = [ z | z <- xs, (divs z (z - 1)) + 1 == z ]


-- 3.1. Definir una función aplicaSeq para aplicar una función a todos los elementos de una secuencia.
aplicarSeq :: (a -> b) -> [a] -> [b]
aplicarSeq f [] = []
aplicarSeq f (x:xs) = (f x) : aplicarSeq f xs 


-- 3.2. Definir una función rechazar que aplicada a un predicado (función boolena) y una 
-- lista, produzca la sublista formada por los elementos de la lista para los que no se cumple el predicado dado

rechazar :: (a -> Bool) -> [a] -> [a]
rechazar f xs = [ x | x <- xs, (f x) == False ]

-- 3.3. Definir una función parList, con una función de dos argumentos y dos listas como 
-- argumentos, que construya una lista con los resultados de aplicar la función del argumento 
-- a los elementos correspondientes (situados en las mismas posiciones) 
-- de ambas listas, permitiendo listas con distinta longitud. 
-- p.e.: parList (+) [3,4] [2,2,1] = [5,6] 

parList :: (a -> a -> b) -> [a] -> [a] -> [b]
parList f _ [] = []
parList f [] _ = []
parList f (x:xs) (y:ys) = (f x y) : parList f xs ys  


-- 3.4. Construir una función 'divide' que tome una lista 'xs' y una condición 'f' y devuelve (ys,zs) donde 
-- 'ys' = primeros elementos que cumplen la condición y 'zs' = resto de elementos.

divide :: (a -> Bool) -> [a] -> ([a] , [a])
divide f xs = ( filter f xs, filter (not . f) xs)


-- Parcial 2 
parcial2 :: [Int] -> [Int]
parcial2 xs = [ x | x <- xs, (x >= 2) && (divisores x x <= 2) ]

-- myTake

mytake :: [a] -> Int -> [a]
mytake [] _ = []
mytake (x:xs) 1 = [x]
mytake (x:xs) num = x : mytake xs (num - 1)

-- myDrop 

mydrop :: [a] -> Int -> [a]
mydrop [] _ = []
mydrop (x:xs) 1 = xs 
mydrop (x:xs) num = mydrop xs (num - 1)

-- contar posiciones pares
long :: [a] -> Int 
long [] = 0 
long (x:xs) = 1 + long xs 

contar :: [a] -> Int 
contar [] = 0
contar (x:xs) 
    | mod (long lista) 2 == 0 = 1 + contar xs 
    | otherwise = contar xs   
    where 
        lista = x:xs

-- cuadrados de una listar a partir del 5

cubos :: Int -> [Int]
cubos num 
    | num < 5 = error "Numero mayor a 5"
    | otherwise = [ x^3 | x <- [5..num], mod x 2 == 0 ]

-- convertir a binario 

binario :: Int -> Int 
binario 0 = 0 
binario 1 = 1 
binario num = (binario (div num 2) ) * 10 + mod num 2

-- factorial con plegador por izquierda 

factorial :: Int -> Int 
factorial 0 = 1 
factorial num = foldl (*) 1 [1..num]

-- 4.3. Definir una función rep que genere la lista infinita resultante de la aplicación
-- sucesiva de una función de un argumento a un cierto valor, tal que: 
-- rep f x = [x, f x, f (f x), ...]. 

rep :: (a -> a) -> a -> [a]
rep f x = f x : rep f (f x)


