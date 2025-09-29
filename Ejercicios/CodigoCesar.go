| lista letra texto texto2 num |

texto:= UIManager default request: 'Ingrese un texto'.
num:= (UIManager default request: 'Ingrese un numero') asInteger.
lista:= ($a to: $z).
texto:= texto asLowercase.
texto2:= ''.
"posicion:= lista at: (((lista indexOf: $z ) + 2) \\ (lista size))."

texto do: [ :char | (char isLetter) ifTrue: [ letra:= lista at: (((lista indexOf: char ) + num) \\ (lista size)) .texto2:= texto2, (letra asString) ] ifFalse: [ texto2:= texto2, char asString ] ].

texto2