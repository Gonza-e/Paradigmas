"Dada una frase y un substrings(no precisamente una palabra, puede ser una palabra incompleta),
obtener la posición donde inicia dicho substrings. En caso de no encontrar devolver 0 y de haber más
de dos solo tomar el primero."

| texto pos |

texto:= 'Hola mundo como estan'.
pos:= texto indexOfSubCollection: 'mun' startingAt: 1.

Transcript show: 'El substring se encuentra en la posicion ', pos asString.

