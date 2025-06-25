Algoritmo controlLicencia
	Escribir 'Se le pedira que ingrese la fecha de vencimiento de su licencia de conducir'
	Escribir 'Ingrese primero los dias, despues los meses y por ultimo el año. DD-MM-AAAA'
	Leer dia
	Leer mes
	Leer año
	licencia_estado = Falso
	Si ((año>2025) Y (mes>=01 y mes <= 12) Y (dia>=01 y dia<= 31)) O ((año == 2025) Y (mes > 06 y mes <= 12) Y (dia >= 01 y dia <= 31)) Entonces
		licencia_estado = Verdadero
		Sino 
			licencia_estado = Falso
		FinSi
		Si licencia_estado = Verdadero Entonces
			Escribir "Verdadero"
		SiNo
			Escribir "Falso"
		FinSi
FinAlgoritmo