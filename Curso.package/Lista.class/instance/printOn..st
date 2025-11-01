printing
printOn: aStream
    | p |
    p := self prim.
    [ p notNil ] whileTrue: [
        aStream nextPutAll: p valor asString.
        aStream nextPutAll: ' -> '.
        p := p prox.
    ].
	
	aStream nextPutAll: 'nil'.
