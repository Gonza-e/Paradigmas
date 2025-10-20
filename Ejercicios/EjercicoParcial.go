| completo grado minuto segundo radianes |

completo:= UIManager default request: 'Ingrese los grados minutos y segundos separados por comas'.

completo:= completo findTokens: ','.
grado:= completo at: 1.
minuto:= completo at: 2.
segundo:= completo at: 3.

minuto:= minuto asNumber * 1/60.
segundo:= segundo asNumber * 1/3600.

grado:= (grado asNumber + segundo + minuto) asFloat.

radianes:= grado * (Float pi / 180).

Transcript clear. 
Transcript show: 'Grados hexadecimales: ',grado asString; cr; show: 'Grados en radianes: ',(radianes roundTo: 0.0001) asString. 