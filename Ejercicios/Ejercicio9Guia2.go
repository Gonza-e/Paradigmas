| esPerfecto numero |
numero:= (UIManager default request: 'Ingrese') asInteger.

esPerfecto:= [ :num |
	| bandera suma |
	suma:= 0. bandera:= true.
	1 to: (num - 1) do: [ :i |
		((num \\ i) = 0) ifTrue: [ suma:= suma + i ] ].
	(suma = num) ifTrue: [ bandera:= true ].
	bandera ].

(esPerfecto value: numero) ifTrue: [ 'El numero es perfecto' ]