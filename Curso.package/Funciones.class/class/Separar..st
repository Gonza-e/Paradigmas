converting
Separar: aString 

"Mismo metodo que substrings"

| texto textoSeparado temp |

temp:= ''.
texto:= aString.
textoSeparado:= OrderedCollection new.

texto do: [ :act |
	(act ~= $ ) ifTrue: [ temp:= temp, act asString ] ifFalse: [ temp isEmpty ifFalse: [ textoSeparado add: temp. temp:= ''  ] ].
	 ].

temp isEmpty ifFalse: [ textoSeparado add: temp ].
^textoSeparado asArray 

