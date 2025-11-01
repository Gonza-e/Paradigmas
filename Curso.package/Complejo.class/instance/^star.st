arithmetic
* otroComplejo
	"multiplicacion de numeros complejos"
			
	| num |
	num:= Complejo new. 
	num real: (self real * otroComplejo real) - (self imaginario * otroComplejo imaginario).
	num imaginario: (self real * otroComplejo imaginario) + (self imaginario * otroComplejo real).
	
^num