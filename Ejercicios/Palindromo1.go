| palindromo texto |
texto:= UIManager default request: 'Ingrese palabra o frase'.

palindromo:= [ :pal |
	| text bandera |
	text:= ''. bandera:= false.
	pal do: [ :i | (i isLetter) ifTrue: [ text:= text, i asString ]  ].
	text:= text asLowercase.
	(text = (text reverse)) ifTrue: [ bandera:= true ].
	bandera
	 ].

(palindromo value: texto) ifTrue: [ 'La palabra/frase es palindroma' ]
ifFalse: [ 'La palabra/frase no es palindroma' ]