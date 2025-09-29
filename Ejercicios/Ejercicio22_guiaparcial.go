"Dada una lista de enteros, devolver una lista donde el primer elemento sea la suma en absoluto de
los negativos. El resto de la lista se compone por los elementos positivos de la lista original."

| arr1 arr2 suma |

arr1:= #(-1 -2 4 2 9 12 -23 -13 47 18).
arr2:= OrderedCollection new.
suma:= 0.

(arr1 select: [ :i | i < 0 ]) do: [ :i |
	suma:= suma + i ].

arr2 add: suma abs.

arr1 do: [ :i |
	i >= 0 ifTrue: [ arr2 add: i ] ].

arr2 asArray