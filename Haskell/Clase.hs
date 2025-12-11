-- Ejercicios que pidio el profe en clases


-- Definir una función myTake que tome los n primeros elementos de la lista.
-- myTake 3 [1, 2, 3, 4, 2] = [1, 2, 3]

myTake :: [a] -> Int -> [a]
myTake [] _ = []
myTake (x:xs) y 
    | y == 1    = [x]
    | otherwise = x : myTake xs (y - 1) 

-- Definir una función myDrop que quite los n primeros elementos de la lista.
-- myDrop 3 [1, 2, 3, 4, 2] = [4, 2]

myDrop :: [a] -> Int -> [a]
myDrop [] _ = []
myDrop (x:xs) y 
    | y == 1    = xs 
    | otherwise = myDrop xs (y - 1)
