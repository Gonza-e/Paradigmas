printOn: aStream
	"Mostrar el valor del numero complejo en el formato (a + bi)"
	
	aStream nextPutAll: real asString.
	imaginario >= 0 
	ifTrue: [ aStream nextPutAll: ' + '. aStream nextPutAll: imaginario asString ]
	ifFalse: [ aStream nextPutAll: ' - '. aStream nextPutAll: (imaginario abs) asString ].
	
	aStream nextPutAll: 'i'.