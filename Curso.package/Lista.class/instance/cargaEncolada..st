inserting
cargaEncolada: unValor

	| p ant q |
	
	q:= Nodo new.
	q valor: unValor.
	p:= self prim.
	[ p notNil ] whileTrue: [ ant:= p. p:= p prox ].
	
	(self prim isNil) ifTrue: [ q prox: self prim. self prim: q ] ifFalse: [ ant prox: q. q prox: p ]
