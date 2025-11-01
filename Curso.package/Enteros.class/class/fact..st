arithmetic
fact: n
	"Metodo para calcular el factorial de un numero"
	
	| num resultado |
	
	resultado:= 1.
	num:= n.
	self verificar: num.
	
	num to: 1 by: -1 do: [ :i |
		resultado:= resultado * i ].
	
^resultado