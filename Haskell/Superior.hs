-- 3.1) Definir una función aplicaSeq para aplicar una función a todos los elementos de una secuencia. 

aplicarSeq :: (a -> b) -> [a] -> [b]
aplicarSeq f xs = map f xs

-- 3.2) Definir una función rechazar que aplicada a un predicado (función boolena) y una 
-- lista, produzca la sublista formada por los elementos de la lista para los que no se 
-- cumple el predicado dado. 

rechazar :: (a -> Bool) -> [a] -> [a]
rechazar f [] = []
rechazar f xs = [ x | x <- xs, (f x) == False ]
