* otroComplejo
	"multiplicacion de numeros complejos"
			
	| num |
	num:= Complejo new. 
	num real: (self real * otroComplejo real) - (self imaginario * otroComplejo imaginario).
	num imaginario: (self real * otroComplejo imaginario) + (self imaginario * otroComplejo real).
	
^num

+ otroComplejo
	"suma de numeros complejos"

	| num |
	num:= Complejo new.
	num real: self real + otroComplejo real.
	num imaginario: self imaginario + otroComplejo imaginario.
	
^num

- otroComplejo
	"suma de numeros complejos"
	
	| num |
	num:= Complejo new.
	num real: self real - otroComplejo real.
	num imaginario: self imaginario - otroComplejo imaginario.
	
^num

/ otroComplejo
	"Division de dos numeros complejos"
	
	| num denominador |
	num:= Complejo new.
	denominador:= ((otroComplejo real raisedTo: 2) + (otroComplejo imaginario raisedTo: 2)).
	num real: ((self real * otroComplejo real) + (self imaginario * otroComplejo imaginario)) / denominador.
	num imaginario: ((self imaginario * otroComplejo real) - (self real * otroComplejo imaginario)) / denominador.
	
^num