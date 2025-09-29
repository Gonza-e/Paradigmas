"Dada una lista de números, previamente ingresadas por el usuario, determinar el menor y mayor
número de la lista."

| lista numero mayor menor |

lista:= OrderedCollection new.
numero:= -1.

[numero ~= 0] whileTrue: [ numero:= (UIManager default request: 'Ingrese un valor') asInteger.
	numero ~= 0 ifTrue: [ lista add: numero ] ].

mayor:= lista max.
menor:= lista min.

Transcript show: 'Numero mayor: ',mayor asString; cr; show: 'Numero menor: ',menor asString; cr.