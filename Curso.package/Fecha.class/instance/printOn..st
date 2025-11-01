printing
printOn: stream 
	"Fecha en formato dia/mes/año"
		
	dia < 10 ifTrue: [ stream nextPutAll: '0'; nextPutAll: dia asString ] ifFalse: [ stream nextPutAll: dia asString ].
	stream nextPutAll: '/'.
	mes < 10 ifTrue: [ stream nextPutAll: '0'; nextPutAll: mes asString ] ifFalse: [ stream nextPutAll: mes asString ].
	stream nextPutAll: '/'.
	stream nextPutAll: año asString.
	