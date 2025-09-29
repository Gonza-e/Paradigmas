"Clave MURCIELAGO. Esta clave tiene la diferencia de que cada letra que conforma la clave es
reemplazada por un número. Mira el ejemplo:
M U R C I E L A G O
0 1 2 3 4 5 6 7 8 9
La palabra PARADIGMAS quedaría codificada como: P727D4807S.
Realizar la codificación de una frase dada y viceversa (decodificación)."

| codigo codificado decodificado texto |

codificado:= ''. decodificado:= ''.
texto:= 'ParadIGmAs'.

codigo:= Dictionary new.
codigo at: $m put: 0.
codigo at: $u put: 1.
codigo at: $r put: 2.
codigo at: $c put: 3.
codigo at: $i put: 4.
codigo at: $e put: 5.
codigo at: $l put: 6.
codigo at: $a put: 7.
codigo at: $g put: 8.
codigo at: $o put: 9.

(texto asLowercase) do: [ :i |
	(codigo includesKey: i) ifTrue: [ codificado:= codificado, (codigo at: i) asString ] 
	ifFalse: [ codificado:= codificado, i asString ] ].

Transcript show: 'Texto codificado: ', codificado asString