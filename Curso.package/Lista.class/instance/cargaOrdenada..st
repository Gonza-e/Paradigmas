inserting
cargaOrdenada: unValor

	| p q ant |
	q:= Nodo new.
	q valor: unValor.
	
	(self prim isNil) ifTrue: [ q prox: self prim. self prim: q ] ifFalse: [ p:= self prim. [( p notNil ) and: [ (q valor < p valor) ] ] whileTrue: [ ant:= p. p:= p prox ]. (p = self prim) ifTrue: [ q prox: p. self prim: q ] ifFalse: [ ant prox: q. q prox: p ] ].
	