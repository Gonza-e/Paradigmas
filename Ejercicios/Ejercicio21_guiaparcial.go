"Dado un texto, devolver en forma de colección ordenada según el tamaño de la palabra"

| texto bandera |

bandera:= true.
texto:= #('Murcielago' 'Hola' 'Como' 'Paris' 'Macanudo' 'Servicio' ).

texto:= (texto asSortedCollection: [ :a :b | a size < b size ] ).

texto asArray