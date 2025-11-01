testing
esPrimo: n
	"Metodo para verificar que un numero es primo"

	| num bandera |
	num:= n.
	self verificar: num. 
	bandera:= true.
	num < 2 ifTrue: [ bandera:= false ].
	2 to: (num sqrtFloor) do: [ :i |
		((num \\ i) = 0) ifTrue: [ bandera:= false ] ].
	
	^bandera ifTrue: [ 'El numero es primo' ] ifFalse: [ 'El numero no es primo' ]