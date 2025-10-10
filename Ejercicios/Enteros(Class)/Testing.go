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

esPar: n
	"Metodo para verificar si un numero es par"
	self verificar: n.
^((n \\ 2) = 0) ifTrue: [ 'El numero es par' ] ifFalse: [ 'El numero es impar' ] 

esPerfecto: n
	"Metodo para verificar si un numero es perfecto"

	| num suma |
	num:= n.
	suma:= 0.
	self verificar: num.
	
	1 to: num - 1 do: [ :i |
		((n \\ i) = 0 ) ifTrue: [ suma:= suma + i asInteger ] ].
	
^ num = suma ifTrue: [ 'El numero es perfecto' ] ifFalse: [ 'El numero no es perfecto' ]

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

verificar: n
	"Metodo para verificar si un numero es entero positivo"
	
	(n isInteger and: [ n >= 0 ]) ifFalse: [ self error: 'El numero debe ser positivo o cero' ]

