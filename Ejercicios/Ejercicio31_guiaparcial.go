"Conjetura del Número capicúa. Esta conjetura clásica se basa en: tomar un número entero
positivo cualquiera. El número se escribe entonces en orden inverso; los dos números se suman. El
proceso se repite con el número sumado, obteniéndose entonces una segunda suma, y se prosigue
de igual forma hasta lograr un capicúa. La conjetura afirma que tras número finito de adiciones
terminará por obtenerse un capicúa. EJ:
 N = 42         N = 28               N = 87
42 + 24 = 66  28 + 82 = 110       87 + 78 = 165
              110 + 011 = 121     165 + 561 = 726
              726 + 627 = 1353
              1353 + 3531 = 4884"

| num numR suma bandera |

bandera:= true.
num:= 87 asString. 
numR:= num reverse.

"num:= (num asNumber) + (numR asNumber).
numR:= (num asString) reverse."

[ bandera ] whileTrue: [ num:= (num asNumber) + (numR asNumber).
	numR:= (num asString) reverse.
	bandera:= (numR ~= (num asString)) ].

^num

