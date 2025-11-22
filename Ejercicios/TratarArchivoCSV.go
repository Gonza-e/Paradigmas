| archivo stream linea columnas persona |

archivo := 'C:/Users/Gonzalo/Desktop/Paradigmas/Personas.csv' asFileReference.
Transcript clear.

archivo exists
	ifTrue: [
		stream := archivo readStream.

		"Saltamos la cabecera del CSV"
		stream nextLine.

		[ stream atEnd ] whileFalse: [
			linea := stream nextLine.
			columnas := (linea findTokens: ',') asArray.

			persona := Personas new.
			persona nombre: (columnas at: 1).
			persona apellido: (columnas at: 2).
			persona edad: (columnas at: 3) asInteger.
			Transcript show: persona nombre; cr.
			"persona esMayor ifTrue: [
				Transcript show: persona nombre; cr.
			]".
		]
	]
	ifFalse: [
		Transcript show: 'No se encontró el archivo'; cr.
	].
