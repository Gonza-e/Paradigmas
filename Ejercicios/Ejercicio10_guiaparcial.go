"Dado un string de entrada y un substring, quitar del string original el substring en cuestión. Ej.
‘Necesito practicar mas Smalltalk sino no llego a los parciales’, quitar: ‘si’-> ‘Neceto practicar mas
Smalltalk no no llego a los parciales’"

| txt subtxt reemplazo |

txt:= (UIManager default request: 'Ingrese un texto').
subtxt:= (UIManager default request: 'Ingrese un substring').
reemplazo:= (UIManager default request: 'Ingrese el reemplazo').

txt:= txt copyReplaceAll: subtxt with: reemplazo.
