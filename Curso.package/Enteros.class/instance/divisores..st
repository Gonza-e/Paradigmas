arithmetic
divisores: n
	"Metodo para calcular los divisores de un numero"
	
	| num resultado |
	
	resultado:= OrderedCollection new.
	num:= n.
	self verificar: num.
	
	1 to: num do: [ :i | 
		((num \\ i) = 0) ifTrue: [ resultado add: i ] ].
	
^resultado asArray