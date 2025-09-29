"Diseñar un algoritmo que permita encontrar un grupo de "NÚMEROS SOCIABLES". Los números
sociables, cumplen con la misma condición que los números amigos, pero en vez de ir en parejas
van en grupos más grandes. La suma de los divisores del primer número da el segundo, la suma de
los del segundo da el tercero, y así sucesivamente. La suma de divisores del último da el primer
número de la lista. Por ejemplo los números 12496,14288,15472,14536,14264"

| divisores numero lista |

lista:= #(12496 14288 15472 14536 14264).

divisores:= [ :num |
	| acum |
	acum:= 0.
	1 to: (num - 1) do: [ :i |
		((num \\ i) = 0) ifTrue: [ acum:= acum + i ] ].
	acum ].

"(divisores value: (lista at: 1)) = (lista at: 2)."
"numero:= divisores value: iteraciones."
"num1:= ((lista at: 1) + 1) \\ 5."

1 to: (lista size) do: [ :i | 
	| siguiente |
	siguiente := (i = lista size) ifTrue: [ lista at: 1 ] 
										  ifFalse: [ lista at: (i + 1) ].
	((divisores value: (lista at: i)) = siguiente) ifTrue: [ Transcript show: 'Los numeros cumplen'; cr ] ].



