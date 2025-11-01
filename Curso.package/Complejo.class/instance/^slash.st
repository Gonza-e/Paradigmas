arithmetic
/ otroComplejo
	"Division de dos numeros complejos"
	
	| num denominador |
	num:= Complejo new.
	denominador:= ((otroComplejo real raisedTo: 2) + (otroComplejo imaginario raisedTo: 2)).
	num real: ((self real * otroComplejo real) + (self imaginario * otroComplejo imaginario)) / denominador.
	num imaginario: ((self imaginario * otroComplejo real) - (self real * otroComplejo imaginario)) / denominador.
	
^num