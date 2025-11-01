initialization
inicializarconDia: unDia mes: unMes año: unAño
	"inicializar fecha"
	
	| rango meses |
	rango:= (1000 to: 3000).
	meses:= #(31 28 31 30 31 30 31 31 30 31 30 31).
	
	dia:= unDia.
	dia < 0 ifTrue: [ ^self error: 'Dia ingresado fuera de rango' ].
	
	mes:= unMes.
	((mes < 0) or: [ mes > 12 ]) ifTrue: [ ^self error: 'Mes ingresado fuera de rango' ].
	
	año:= unAño.
	(rango includes: año) ifFalse: [ ^self error: 'Año ingresado fuera de rango' ].
	
	(self esBisiesto and: [ mes = 2 ]) ifTrue: [ meses at: mes put: 29 ].
	dia <= (meses at: mes) ifFalse: [ ^self error: 'La cantidad de dias no corresponden al mes' ].
	