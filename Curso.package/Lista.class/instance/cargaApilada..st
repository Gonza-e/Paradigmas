inserting
cargaApilada: unValor
	"Carga apilada"
	
	| nodo |
	
	nodo:= Nodo new.
	nodo valor: unValor.
	
	nodo prox: self prim.
	self prim: nodo.
	
	
	