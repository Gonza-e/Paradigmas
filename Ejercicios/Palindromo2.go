| texto texto2 reverso |

texto:= 'Anita lava, la tina.'.
texto2:= ''.
reverso:= ''.

texto do: [ :x |
	x isLetter ifTrue: [ texto2:= texto2, (x asString) asLowercase ] ].

(texto2 size) to: 1 by: -1 do: [ :i |
	reverso:= reverso, (texto2 at: i) asString ].

(texto2 = reverso) ifTrue: [ Transcript show: 'La frase es palindroma' ]