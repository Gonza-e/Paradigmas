"Definir todos los métodos que considere necesario, tal que dada una lista de cadenas,
y otra lista de enteros, devuelva la lista de aquellas cadenas cuya longitud coincide
con el entero correspondiente en la segunda lista"

| lista1 lista2 listaSal |
lista1:= #('hola' 'mundo' 'si' 'pil').
lista2:= #(4 2 2 1).
listaSal:= OrderedCollection new.

1 to: lista1 size do: [ :i |
	(((lista1 at: i) size) = (lista2 at: i)) ifTrue: [ listaSal add: (lista1 at: i) ] ].

listaSal asArray.