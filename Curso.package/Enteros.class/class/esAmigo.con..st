testing
esAmigo: n con: b  
	"Metodo para verificar si dos numeros son amigos"	
			
	| num1 num2 suma1 suma2 |
	num1:= n. num2:= b.
	suma1:= 0. suma2:= 0.
	self verificar: num1.
	self verificar: num2.
	
	1 to: num1 - 1 do: [ :i |
		((num1 \\ i) = 0 ) ifTrue: [ suma1:= suma1 + i asInteger ] ].
	1 to: num2 - 1 do: [ :x |
		((num2 \\ x) = 0) ifTrue: [ suma2:= suma2 + x asInteger ] ].
	
	^((num1 = suma2) and: [ num2 = suma1 ]) ifTrue: [ 'Los numeros son amigos' ] ifFalse: [ 'Los numeros no son amigos' ]
	