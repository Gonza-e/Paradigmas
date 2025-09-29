"Dado un arreglo, obtener otro eliminando el valor solicitado"

| arr num arr2 |

num:= (UIManager default request: 'Ingrese un valor') asInteger.
arr:= #(2 3 9 12 83 49 57 39 57 42 49).
arr2:= OrderedCollection new. 

arr do: [ :i |
	i ~= num ifTrue: [ arr2 add: i ] ].

arr2 asArray