-- 2.4) Definir recursivamente una función que retorne la longitud de una cadena de caracteres

long [] = 0 
long (_:xs) = 1 + long xs 

-- 2.5) Escribir un programa funcional que determine la longitud de una lista cualquiera.
longitud :: [a] -> Int 
longitud [] = 0 
longitud (_:xs) = 1 + longitud xs 

-- 2.6) Dada una cadena s / long(s) >= n, implemente una función carn que retorne el n-ésimo carácter de s. 
carn :: [a] -> Int -> a 
carn [] n = error "Vacio"
carn (x:xs) n = 
    if n == 1 then
        x 
    else 
        carn xs (n - 1)  

-- 2.7) Escribir una función recursiva que sume todos los números menores de 3 que aparezcan en una lista de enteros usando guardas. 

sumMenores3 :: [Int] -> Int
sumMenores3 [] = 0 
sumMenores3 (x:xs) = 
    if x < 3 then 
        x + sumMenores3 xs 
    else 
        sumMenores3 xs 
        
-- 2.8) Escribir una función recursiva que calcule el máximo elemento de la lista. 

-- 2.9) Mostrar si el enésimo entero de una lista ingresada es par 

mostrarPar :: [Int] -> Int -> Bool 
mostrarPar [] n = error "Lista vacia"
mostrarPar (x:xs) n =
    if n == 1 then 
        mod x 2 == 0
    else 
        mostrarPar xs (n - 1)

-- 2.10) Definir recursivamente una función cola que devuelve los últimos n-1 caracteres de una cadena. 

colaa :: [a] -> Int -> [a] 
colaa (x:xs) n = 
    if n == 1 then 
        xs 
    else 
        colaa xs (n - 1) 

-- 2.12) Definir recursivamente una función reversa que invierta el orden de los elementos de una lista. 

reversa :: [a] -> [a]
reversa [] = []
reversa (x:xs) = reversa xs ++ [x]


-- 2.13) Definir recursivamente una función que devuelva la cantidad de ‘a’ en una cadena usando guardas. 

cantidadA :: [Char] -> Int 
cantidadA [] = 0 
cantidadA (x:xs) 
    | x == 'a'  = 1 + cantidadA xs 
    | x == 'A'  = 1 + cantidadA xs 
    | otherwise = cantidadA xs 


-- 2.15) Escribir una función que rote a izquierda los elementos de una lista n posiciones. 
-- Dar una solución para que la función permita valores de n negativos (deberá rotar para la derecha). 

rotar :: [a] -> Int -> [a]
rotar [] _ = []
rotar xs 0 = xs
rotar (x:xs) n
    | n > 0     = rotar (xs ++ [x]) (n - 1)     -- rota a izquierda
    | n < 0     = rotar (last xs : init (x:xs)) (n + 1)  -- rota a derecha

-- last xs: tomo el ultimo elemento de la cola 
-- init (x:xs): tomo todos los elementos menos el ultimo 

-- 2.17) Escribir un programa funcional que determine si un elemento es miembro de una lista. 
en :: Eq a => [a] -> a -> Bool
en [] n = False
en (x:xs) n
    | x == n    = True 
    | otherwise = en xs n 

-- 2.18) Escribir un programa funcional que concatene dos listas. 
concatenar :: [a] -> [a] -> [a]
concatenar [] ys = ys 
concatenar (x:xs) ys = x : concatenar xs ys  

-- 2.20) Escribir una función que determine si cada uno de los elementos de una cadena 
-- de enteros está contenida en otra. En la primera cadena no hay repetidos. 
-- Las coincidencias son correlativas: si m esta después de n en la primera cadena entonces m está después de n en la segunda cadena. 
-- Ejemplo f [1,3,5] [1,2,3,4,5,5] = True 
buscar :: Eq a => [a] -> [a] -> Bool
buscar [] _ = True 
buscar _ [] = False 
buscar (x:xs) (y:ys) 
    | x == y    = buscar xs ys 
    | otherwise = buscar (x:xs) ys 

-- 2.22) Escriba una función palindromo que devuelva True o False si una cadena es igual a su reverso.
palindromo :: Eq a => [a] -> Bool 
palindromo [] = False 
palindromo xs  
    | reverse xs == xs  = True 
    | otherwise         = False

eliminarBlanco :: String -> String
eliminarBlanco [] = []
eliminarBlanco xs = [ x | x <- xs, x /= ' ' ] 

-- 2.27) Usando listas por comprensión, definir una función que genere una lista de tuplas 
-- de tres elementos (i, j, k), donde el primer elemento sea múltiplo de 2, el segundo 
-- elemento sea múltiplo de 3 y el tercer elemento sea el producto de ambos, con la 
-- condición de que la suma de los i y j sea múltiplo de 5. 

terna :: [Int] -> [Int] -> [(Int,Int,Int)]
terna xs ys = [ (x,y,x*y) | x <- xs, y <- ys, mod x 2 == 0, mod y 3 == 0, mod (x + y) 5 == 0 ]

-- 2.28) Determinar una lista que contenga todos los puntos del plano en el rango 
-- [0..10,0..10] que estén por sobre la función identidad: f(x)=x. 

funcionIdentidad :: [Int] -> [Int]-> [(Int,Int)]
funcionIdentidad xs ys = [ (x,y) | x <- xs, y <- ys, y == x]
