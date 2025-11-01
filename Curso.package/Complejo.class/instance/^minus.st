arithmetic
- otroComplejo
	"suma de numeros complejos"
	| num |
	num:= Complejo new.
	num real: self real - otroComplejo real.
	num imaginario: self imaginario - otroComplejo imaginario.
	
^num