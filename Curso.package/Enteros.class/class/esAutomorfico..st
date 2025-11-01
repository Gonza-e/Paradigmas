testing
esAutomorfico: n
	"Su cuadrado termina con el mismo número."
			
	| cuadrado cuadradoStr num |
	
	num:= n asString.
	cuadrado:= n * n.
	cuadradoStr:= cuadrado asString.
	
^ (cuadradoStr endsWith: num) ifTrue: [ 'El numero es automorfico' ] ifFalse: [ 'El numero no es automorfico' ]