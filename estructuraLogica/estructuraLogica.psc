Algoritmo TP_Integrador
	// RentCar San Carlos de Bariloche.
	// (N)  Se debe de separar entre turista y recidente, en el caso de ser turista se desglosara entre interncacional o nacional. Ademas de pedir
	// los datos basicos del cliente.
	// Nacional o Regional: nombre, apellido, DNI, teléfono, domicilio, empresa, teléfonos laborales, domicilio laboral, licencia de conducir nacional.
	// Extranjero: nombre, apellido, pasaporte, teléfono, hotel o agencia de turismo, empresa, teléfonos laborales, domicilio laboral, licencia de conducir internacional.
	// (C)  Cliente VIP: se otroga una tarjeta VIP al cliente que tenga un registro de 8 alquileres realizado (cada alquiler debe de ser superior a una semana),
	// con una fecha de vencimiento de  1 años una vez entregada la tarjeta. La misma es reutilizable durante este periodo de tiempo, una vez finiquitado se reboca este
	// privilegio y se debera de volver a realizar 8 viajes como cliente no VIP para tener esta membrecia. La tarjeta dara un descuento
	// del 15 MOD  y en caso de ser temporada de invierno el equipamiento de invierno sera cortecia de la agencia.
	// Atributos de los vehiculos: patente, numero de chasis, motor y tipo de vehiculo, premiso municipal, equipamiento de invierno.
	// Tipos de tarifas: diaria, fin de semana , semana y mes o superior. En caso de ser temporada alta (Junio a septiembre (invierno),
	// diciembre a febrero (verano) se sumara un 30 MOD  a las tarifas. Se debe de tener en cuenta la precuacion segun la zona a circular (generar avisos antes de finalizar el contrato).
	// Precio por unidad traccion simple: Precio base del vehiculo por es de Dia = $30.000; Dos dias = $60.000 - 5 MOD  -> $57.000;
	// Precio por semana = $210.000 - 5 MOD  -> $199.500; Precio por mes o mas = $900.000 - 10 MOD  + dias extra -> $855.000 + dia extra.
	// Precio por unidad de 4x4: Precio base del vehiculo por es de Dia = $45.000; Dos dias = $90.000 - 5 MOD  -> $85.500;
	// Precio por semana = $315.000 - 5 MOD  -> $299.250; Precio por mes o mas = $1.350.000 - 10 MOD  + dias extra -> $1.282.500 + dia extra.
	// Precio del seguro basico contra daño y hurto = $5.000
	// Precio del seguro contra todo risego = $15.000
	// Precio por equipo de invierno = $7.000
	
	
	
	Escribir 'Bienvenido a RentCar del Sur'
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
	// ingresar funcion stockVehiculo con el parametro 'eleccion_vehiculo'
	
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
	Mientras eleccion_vehiculo<=8 Hacer
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
	
	Si stock=Verdadero Entonces
		Escribir 'Se le ofrecen 4 paquetes de alquiler'
		Escribir '1: alquiler de 24 horas o un dia'
		Escribir '2: alquiler de 48 horas o dos dias'
		Escribir '3: alquiler de 168 horas o siete dias'
		Escribir '4: alquiler de un mes o superior'
		Escribir 'Si usted preciona la opcion 4, se le contara un precio base de un mes y despues se le agregaran los dias extra que usted desea alquilar'
		Leer op_alquiler
		
		
		Si vehiculo_elegido=traccion_simple Entonces
			precio <- 30000
		SiNo
			precio <- 45000
		FinSi
		
		Si op_alquiler=4 Entonces
			Escribir 'Ingrese cuantos dias extra va a realizar'
			Leer precio_extra
			precio <- precio*30+precio*precio_extra
		FinSi
		
		
		
		Escribir "Inrgese la fecha de alquiler con el formato DD-MM-AAAA"
		Leer dia_alquiler
		Leer mes_alquiler
		leer año_alquiler
		
		//se define en que momento del año se esta realizando el alquiler para modificar los precios por demanda
		Si mes >= 6 y mes <= 9 Entonces
			temporadaInvierno = Verdadero
		SiNo
			temporadaInvierno = falso
		FinSi
		
		
		Si mes = 12 o mes >=1 y mes < 3 Entonces
			temporadaVerano  = Verdadero
		SiNo
			temporadaVerano = Falso
		FinSi
		
		
		Si temporadaInvierno==Verdadero Entonces
			Escribir "Al importe se le agregan $10.000 por equipo de invierno"
			precio = precio + 10000
		FinSi
		
		//se agrega 30% por ser temporada alta
		Si temporadaVerano==Verdadero o temporadaInvierno == Verdadero Entonces
			porcentajeTemporada = precio * 0.3
			precio = precio + porcentajeTemporada
		FinSi
		
		Escribir "Tiene dos planes de seguro"
		Escribir "1: Proteccion contra daños menores"
		Escribir "2: Proteccion contra todo riesgo"
		leer seguro
	
		Si seguro = 1 Entonces
			precio = precio + 5000
		SiNo
			precio = precio + 15000
		FinSi
		
		Escribir "El importe total por la renta del vehiculo seria de $", precio
		
		Escribir " "
		Escribir "¿Desea concretar el contrato?"
		Escribir "1: SI"
		Escribir "2 NO"
		leer seguir_renta
		Si seguir_renta = 1 Entonces
			Escribir "falta muy poco para que este sobre ruedas"
			//inserrtar funcion informacionUsuario
		SiNo
			Escribir "Nos vemos la proxima"
		FinSi
		
	SiNo
		Escribir 'Ingrese mas tarde que nos estan por devolver un vehiculo'
	FinSi
FinAlgoritmo
