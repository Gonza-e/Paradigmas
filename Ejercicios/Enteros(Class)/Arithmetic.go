divisores: n
	"Metodo para calcular los divisores de un numero"
	
	| num resultado |
	
	resultado:= OrderedCollection new.
	num:= n.
	self verificar: num.
	
	1 to: num do: [ :i | 
		((num \\ i) = 0) ifTrue: [ resultado add: i ] ].
	
^resultado asArray


fact: n
	"Metodo para calcular el factorial de un numero"
	
	| num resultado |
	
	resultado:= 1.
	num:= n.
	self verificar: num.
	
	num to: 1 by: -1 do: [ :i |
		resultado:= resultado * i ].
	
^resultado