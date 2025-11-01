testing
verificar: n
	"Metodo para verificar si un numero es entero positivo"
	
	(n isInteger and: [ n >= 0 ]) ifFalse: [ self error: 'El numero debe ser positivo o cero' ]