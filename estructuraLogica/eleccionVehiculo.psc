Algoritmo eleccionVehiculo
	Escribir 'Podra visualizar nuesto catalogo y elegir la opcion que mas le complazca'
	// Mostrar vehículos disponibles
	Escribir '=== Traccion Simple ==='
	Escribir 'El precio de renta de un automovil de traccion simple es de 30.000'
	Escribir '1. Toyota Corolla'
	Escribir '2. Honda Civic'
	Escribir '3. Nissan Sentra'
	Escribir '4. Ford Focus'
	Escribir '=== Traccion Doble ==='
	Escribir 'El precio de renta de un automovil de traccion doble es de 45.000'
	Escribir '5. Toyota Hilux'
	Escribir '6. Ford Ranger'
	Escribir '7. Nissan Frontier'
	Escribir '8. Chevrolet S10'
	Dimensionar vehiculos(8)
	vehiculos[1] <- toyotaCorolla
	vehiculos[2] <- hondaCivic
	vehiculos[3] <- nissanSentra
	vehiculos[4] <- fordFocus
	vehiculos[5] <- toyotaHilux
	vehiculos[6] <- fordRanger
	vehiculos[7] <- nissanFrontier
	vehiculos[8] <- chevroletS10
	eleccion_vehiculo <- 1
	Mientras eleccion_vehiculo<=8 Y eleccion_vehiculo>0 Hacer
		Escribir 'Ingrese el id del vehiculo que desea alquilar'
		Leer eleccion_vehiculo
		vehiculos[eleccion_vehiculo] <- Aleatorio(0,5)
		Si vehiculos[eleccion_vehiculo]<>0 Entonces
			Escribir 'En hora buena, hay stock'
			eleccion_vehiculo <- eleccion_vehiculo+8
			stock <- Verdadero
		SiNo
			Escribir 'Disculpe las molestias en este momento el auto se encuentra alquilado'
			stock <- Falso
		FinSi
	FinMientras
	Si eleccion_vehiculo>=5 Entonces
		vehiculo_elegido <- traccion_doble
	SiNo
		vehiculo_elegido <- traccion_simple
	FinSi
FinAlgoritmo
