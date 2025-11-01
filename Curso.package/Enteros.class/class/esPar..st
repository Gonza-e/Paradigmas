testing
esPar: n
	"Metodo para verificar si un numero es par"
	self verificar: n.
	^((n \\ 2) = 0) ifTrue: [ 'El numero es par' ] ifFalse: [ 'El numero es impar' ] 
	