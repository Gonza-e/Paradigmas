"Un número es primo perfecto si y solo si cumple estas 3 condiciones:
1- El número es primo.
2- Cada dígito del número es primo.
3- La suma de todos los dígitos es un número primo.
EJ: 227 -> 227 (es primo), 2 es primo , 7 es primo y la suma de 2 2 y 7 es 11, y este también es
primo.
Determinar si un número ingresado por el usuario es primo perfecto."

| ban1 ban2 ban3 esPrimo num acum |
Transcript clear.
acum:= 0.
num:= 227.
ban1:= false. ban2:= false. ban3:= false.

esPrimo:= [ :numero |
	| bandera |
	bandera:= true.
	(numero < 2) ifTrue: [ bandera:= false ].
	2 to: (numero // 2) do: [ :i | 
		((numero \\ i) = 0) ifTrue: [ bandera:= false ] ].
	bandera ].

ban1:= (esPrimo value: num).

(num asString) do: [ :i |
	(esPrimo value: (i digitValue)) ifTrue: [ ban2:= true. acum:= acum + (i digitValue) ]
	ifFalse: [ ^false ] ].

ban3:= (esPrimo value: acum).

((ban1 and: [ ban2 ]) and: [ ban3 ]) ifTrue: [ Transcript show: 'El numero es primo perfecto' ]