Algoritmo controlLicencia
	
	Escribir "Se le pedira que ingrese la fecha de vencimiento de su licencia de conducir"
	Escribir "Ingrese primero los dias, despues los meses y por ultimo el a�o. DD-MM-AAAA"
	
	Escribir "Ingrese el dia en que vence"
	Leer dia
	Escribir "Ingrese el mes de vencimiento"
	leer mes
	Escribir "Ingrese el a�o"
	leer a�o
	licencia_estado = Falso
	Mientras licencia_estado = Falso Hacer
		Si 2025 < a�o Entonces
			licencia_estado = verdadero
		SiNo
			licencia_estado = falso
		FinSi
		Si 2025 == a�o Entonces
			Si 06 < mes Entonces
				licencia_estado = Verdadero
			SiNo
				licencia_estado = falso
			FinSi
			Si 06 == mes Entonces
				Si 05 < dia Entonces
					licencia_estado = Verdadero
				SiNo
					licencia_estado = falso
				FinSi
			FinSi
		FinSi
	FinMientras
	Si licencia_estado = verdadero Entonces
		Escribir "Su licencia es valida"
	Sino 
		Escribir "Su licencia esta vencida no la podemos aceptar"
	FinSi
FinAlgoritmo
