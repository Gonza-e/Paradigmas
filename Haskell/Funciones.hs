-- 1.1) Definir recursivamente el producto en función de la suma. 

producto x y = 
    if x == 0 || y == 0 then 
        0
    else if x == 1 then 
        y 
    else if y == 1 then 
        x
    else 
        x + producto x (y - 1)

-- 1.2) Escribir una función cociente que calcule el cociente 
--      de una división entera utilizando sumas y restas.

cociente x y = 
    if y == 0 then 
        error "Error: division por cero"
    else if y == 1 then 
        x 
    else if x < y then 
        0
    else
        1 + cociente (x - y) y

dividir :: Int -> Int -> Int 
dividir x 0 = x 
dividir x y  
    | x < y     = 0
    | otherwise = 1 + dividir (x - y) y  
        

-- 1.3) Escribir una función resto que calcule el resto de una división entera utilizando 
--      restas únicamente. 

resto x y = 
    if y == 0 then 
        error "Error: division por cero"
    else if y == 1 then
        0 
    else if x < y then 
        x 
    else 
        resto (x - y) y

-- 1.4) Escribir una función fact que calcule el factorial de un número. 

fact x = 
    if x == 0 then 
        1 
    else 
        x * fact (x - 1)

-- 1.5) Definir recursivamente: (sumatoria de i)

sumatoria n i = 
    if n == 0 then 
        i 
    else 
        sumatoria (n - 1) (3*i + 1)

-- 1.6) Definir recursivamente la potencia en función del producto. 

potencia num 0 = 1
potencia num exp = num * potencia num (exp - 1)
    
-- 1.9) Escribir una función binario que calcule la representación binaria de un número 
--      entero dado en representación decimal. 

binario num = 
    if num == 0 then
        "0"
    else if num == 1 then 
        "1"  
    else 
        binario (div num 2) ++ show (mod num 2)

-- 1.11) Escribir un programa que devuelva el enésimo término de la serie de Fibonacci.

fibo 1 = 0
fibo 2 = 1
fibo 3 = 1 
fibo num = fibo (num - 1) + fibo (num - 2) 

-- 1.12)

divisores num1 num2 suma =
    if num2 == 0 then
        suma 
    else 
        if (mod num1 num2) == 0 then 
            divisores num1 (num2 - 1) (suma + 1)
        else 
            divisores num1 (num2 - 1) suma

--divs :: Int -> Int -> Int -> Int 
--divs x y suma 
--    | y == 0 = 1 
--    | mod x y == 0 = 1 + divs x (y - 1) (suma + 1)
--   | otherwise = divs x (y - 1) suma

esPrimo num = 
    if num == 1 then 
        False 
    else if (divisores num num 0) > 2 then
            False 
        else 
            True

--primos :: Int -> Bool 
--primos x 
--    | x < 2      = False 
--    | divs x x 0 > 2   = False 
--    | otherwise = True 

