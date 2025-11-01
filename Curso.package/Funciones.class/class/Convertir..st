converting
Convertir: aString
	"Convertir un numero en palabras a digitos"
			
	| num palabras total |
	
	palabras:= Dictionary new.
	palabras at: 'uno' put: 1.
	palabras at: 'dos' put: 2.
	palabras at: 'tres' put: 3.
	palabras at: 'cuatro' put: 4.
	palabras at: 'cinco' put: 5.
	palabras at: 'seis' put: 6.
	palabras at: 'siete' put: 7.
	palabras at: 'ocho' put: 8.
	palabras at: 'nueve' put: 9.
	palabras at: 'diez' put: 10. 
	palabras at: 'once' put: 11.
	palabras at: 'doce' put: 12.
	palabras at: 'trece' put: 13.
	palabras at: 'catorce' put: 14.
	palabras at: 'quince' put: 15.
	palabras at: 'dieciseis' put: 16.
	palabras at: 'diecisiete' put: 17.
	palabras at: 'dieciocho' put: 18.
	palabras at: 'diecinueve' put: 19.
	palabras at: 'veinte' put: 20. 
	palabras at: 'veintiuno' put: 21.
	palabras at: 'veintidos' put: 22.
	palabras at: 'veintitres' put: 23.
	palabras at: 'veinticuatro' put: 24.
	palabras at: 'veinticinco' put: 25.
	palabras at: 'veintiseis' put: 26.
	palabras at: 'veintisiete' put: 27.
	palabras at: 'veintiocho' put: 28.
	palabras at: 'veintinueve' put: 29.
	palabras at: 'treinta' put: 30.
	palabras at: 'cuarenta' put: 40.
	palabras at: 'cincuenta' put: 50.
	palabras at: 'sesenta' put: 60.
	palabras at: 'setenta' put: 70.
	palabras at: 'ochenta' put: 80.
	palabras at: 'noventa' put: 90.
	palabras at: 'cien' put: 100.
	palabras at: 'doscientos' put: 200.
	palabras at: 'trescientos' put: 300.
	palabras at: 'cuatrocientos' put: 400.
	palabras at: 'quinientos' put: 500.  
	palabras at: 'seiscientos' put: 600.
	palabras at: 'setecientos' put: 700.
	palabras at: 'ochocientos' put: 800.
	palabras at: 'novecientos' put: 900.
	
	total:= 0.
	num:= aString asLowercase. 
	
	num substrings do: [ :i | 
		(palabras includesKey: i) ifTrue: [ total:= total + (palabras at: i) ] ].
	
^total