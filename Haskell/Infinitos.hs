-- 4.1. Definir una función listaSuc que genere la lista infinita de los números siguientes a uno dado. 

listaSuc :: Int -> [Int]
listaSuc 0 = []
listaSuc n = n : listaSuc (n + 1)






