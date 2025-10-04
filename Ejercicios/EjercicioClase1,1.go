"Contar y mostrar la vocal con mas frecuencia de aparicion"

| texto cA cE cI cO cU frecuencia vocal vocales |

vocales:= #( $a $e $i $o $u ).
frecuencia:= Array new: 5.
texto:= 'Hola mundo mundo mundo como como como estan estan.'.

1 to: texto size do: [ :i |
	(vocales includes: (texto at: i)) ifTrue: [ (frecuencia at: (vocales indexOf: (texto at: i)) put: (texto occurrencesOf: (texto at: i))  ) ] ].

1 to: frecuencia size do: [ :z |
	(frecuencia at: z) isNil ifTrue: [ frecuencia at: z put: 0 ] ].

Transcript show: 'La vocal que mas aparece es: ', (vocales at: (frecuencia indexOf: frecuencia max)) asString 