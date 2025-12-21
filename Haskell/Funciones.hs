-- 1.1) Definir recursivamente el producto en función de la suma. 

producto :: Int -> Int -> Int 
producto x 0 = 0
producto 0 y = 0 
producto x y = x + producto x (y - 1)

-- 1.2) Escribir una función cociente que calcule el cociente 
--      de una división entera utilizando sumas y restas.

dividir :: Int -> Int -> Int 
dividir x 0 = x 
dividir x y  
    | x < y     = 0
    | otherwise = 1 + dividir (x - y) y  
        

-- 1.3) Escribir una función resto que calcule el resto de una división entera utilizando 
--      restas únicamente. 

resto :: Int -> Int -> Int 
resto x 0 = error "Division por cero"
resto x y 
    | x < y = x 
    | otherwise = resto (x - y) y

-- 1.4) Escribir una función fact que calcule el factorial de un número. 

fact :: Int -> Int 
fact 0 = 1 
fact num = num * fact (num - 1)

-- 1.5) Definir recursivamente: (sumatoria de i)

sumatoria n i = 
    if n == 0 then 
        i 
    else 
        sumatoria (n - 1) (3*i + 1)

-- 1.6) Definir recursivamente la potencia en función del producto. 

potencia :: Int -> Int -> Int
potencia num 0 = 1
potencia num exp = num * potencia num (exp - 1)
    
-- 1.9) Escribir una función binario que calcule la representación binaria de un número 
--      entero dado en representación decimal. 

binario :: Int -> Int 
binario 0 = 0 
binario 1 = 1 
binario num = (binario (div num 2)) * 10 + mod num 2 

-- 1.11) Escribir un programa que devuelva el enésimo término de la serie de Fibonacci.

fibo :: Int -> Int
fibo 1 = 0
fibo 2 = 1
fibo 3 = 1 
fibo num = fibo (num - 1) + fibo (num - 2) 

-- 1.12)

divisores :: Int -> Int -> Int 
divisores x 1 = 1
divisores x y 
    | mod x y == 0 = 1 + divisores x (y - 1)
    | otherwise = divisores x (y - 1)

esPrimo num = 
    if num == 1 then 
        False 
    else if (divisores num num) > 2 then
            False 
        else 
            True

--primos :: Int -> Bool 
--primos x 
--    | x < 2      = False 
--    | divs x x 0 > 2   = False 
--    | otherwise = True 

