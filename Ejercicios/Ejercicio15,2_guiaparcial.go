"Limpiar los caracteres con acentos en una frase y devolverla sin ellos. Ejemplo: ‘hólá mÚndÓ’ -> 'hola
mUndO'"

| texto limpio vocales |

vocales:= Dictionary new.
vocales at: $á put: $a.
vocales at: $é put: $e.
vocales at: $í put: $i.
vocales at: $ó put: $o.
vocales at: $ú put: $u.
vocales at: $Á put: $A.
vocales at: $É put: $E.
vocales at: $Í put: $I.
vocales at: $Ó put: $O.
vocales at: $Ú put: $U.

limpio:= ''.
texto:= 'holÁ mÚNdó'.

texto do: [ :char | 
	(vocales includesKey: char) ifTrue: [ limpio:= limpio, (vocales at: char) asString ]
	ifFalse: [ limpio:= limpio, (char asString) ] ].

^limpio