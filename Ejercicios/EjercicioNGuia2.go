"Encontrar la palabra mas larga de un arreglo y dar su posicion"

| verificar lista palabra pos |

lista:= #('Murcielago' 'Hola' 'Como' 'Paris' 'Macanudo' 'Servicio' ).

palabra:= (lista detectMax: [ :a | a size ] ).
pos:= lista indexOf: palabra.

Transcript show: 'La palabra mas larga es: ', palabra asString; cr; show: 'La posicion de la palabra es: ', pos asString.