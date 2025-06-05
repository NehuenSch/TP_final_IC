Algoritmo stockVehiculo

	Dimensionar vehiculos[6]
	vehiculos[1] = auto1
	vehiculos[2] = auto2
	vehiculos[3] = auto3
	vehiculos[4] = auto4
	vehiculos[5] = auto5
	vehiculos[6] = auto6
	
	
	Mientras i<=6 Hacer
		Escribir "Ingrese el id del vehiculo que desea alquilar"
		leer i
		vehiculos[i] = Aleatorio(0,5)
		
		Si vehiculos[i] <> 0 Entonces
			Escribir "En hora buena, hay stock"
			i = i + 6
			stock = Verdadero
		SiNo
			Escribir "Disculpe las molestias en este momento el auto se encuentra alquilado"
			stock = Falso
		FinSi
	FinMientras	
FinAlgoritmo
