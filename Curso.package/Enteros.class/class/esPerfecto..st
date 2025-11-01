testing
esPerfecto: n
	"Metodo para verificar si un numero es perfecto"

	| num suma |
	num:= n.
	suma:= 0.
	self verificar: num.
	
	1 to: num - 1 do: [ :i |
		((n \\ i) = 0 ) ifTrue: [ suma:= suma + i asInteger ] ].
	
^ num = suma ifTrue: [ 'El numero es perfecto' ] ifFalse: [ 'El numero no es perfecto' ]
