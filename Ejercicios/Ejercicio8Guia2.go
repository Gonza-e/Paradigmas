| esPrimo esPrimovector vector |

esPrimo:= [ :num |
	| bandera |
	bandera:= true.
	num < 2 ifTrue: [ bandera:= false ].
	2 to: (num sqrtFloor) do: [ :i |
		((num \\ i) = 0) ifTrue: [ bandera:= false ] ].
	bandera ].

esPrimovector:= [ :numeros |
	2 to: numeros do: [ :h | 
		(esPrimo value: h) ifTrue: [ Transcript show: 'El numero ', h asString, ' es primo'; cr] ] ].

vector:= 200.

esPrimovector value: vector.