"Contar y mostrar la vocal con mas frecuencia de aparicion"

| texto cA cE cI cO cU frecuencia vocal vocales |

vocales:= #( $a $e $i $o $u ).
frecuencia:= OrderedCollection new.
texto:= 'Hola mundo mundo mundo como como como estan estan'.

cA:= texto occurrencesOf: $a. frecuencia add: cA.
cE:= texto occurrencesOf: $e. frecuencia add: cE.
cI:= texto occurrencesOf: $i. frecuencia add: cI.
cO:= texto occurrencesOf: $o. frecuencia add: cO.
cU:= texto occurrencesOf: $u. frecuencia add: cU.

vocal:= frecuencia max.

Transcript show: 'La vocal que mas aparece es: ', (vocales at: (frecuencia indexOf: vocal)) asString


