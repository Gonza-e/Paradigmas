Accion secuencia es 
 Ambiente 
	est, jug, sal: secuencia de caracteres
	e, j: caracter
	goles, asist, t_rojas, cont_equipo, minutos, cont_conf: entero
	
	Funcion conv(e:caracter): entero 
	FFuncion

	Proceso 
		ARR(est); AVZ(est,e)
		ARR(jug); AVZ(jug,j)
		goles:= 0, asist:= 0; t_rojas:= 0
		cont_equipo:= 0; minutos:= 0; cont_conf:= 0

		Mientras NFDS(est) y NFDS(jug) hacer 
			Mientras j <> "-" hacer 
				AVZ(jug,j)
			FM 
			AVZ(jug,j) // Agregue este avanzar para el primer "-"

			Mientras j <> "$" hacer 

				Mientras j <> "-" hacer 
					AVZ(jug,j)
					Esc(sal,j)
				FM 
				AVZ(jug,j)
				Esc(sal,"/")

				Mientras j <> "%" hacer 
					Para i:= 1 hasta 2 hacer 
						goles:= goles * 10 + conv(e)
						AVZ(est,e)
					FPara

					Para i:= 1 hasta 2 hacer 
						asist:= asist * 10 + conv(e)
						AVZ(est,e)
					FPara

					Para i:= 1 hasta 4 hacer 
						minutos:= minutos * 10 + conv(e)
						AVZ(est,e)
					FPara
					AVZ(est,e) // Avanzo tarjetas amarillas
					t_rojas:= conv(e)
					AVZ(est,e) // Avanzo tarjetas rojas
					AVZ(est,e) // Avanzo "#"

					Mientras j <> "*" hacer 
						si goles >= 3 * (asist + t_rojas) entonces 
							Esc(sal,j)
						fsi 
						AVZ(jug,j)
					FM 
					AVZ(jug,j) // Avanzo "*"
					cont_equipo:= cont_equipo + 1
					Esc(sal,"_")

					Para i:= 1 hasta 5 hacer // Hasta 5 para avanzar "#"
						AVZ(jug,j)
					FPara 	

					si minutos >= 1000 entonces 
						cont_conf:= cont_conf + 1
					fsi

					t_rojas:= 0; minutos:= 0; goles:= 0; asist:= 0

				FM 

				Esc(sal,"%")
				Esc("Cantidad de jugadores de este equipo: ",cont_equipo)
				cont_equipo:= 0
			FM 

			Esc("Cantidad de jugadores con mas de 1000 minutos: ", cont_conf)
			cont_conf:= 0 
		FM 

		Cerrar(jug); Cerrar(est); Cerrar(sal)
	FM 










