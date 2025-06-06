Algoritmo informacionUsuario
	// Se debe de separar entre turista y recidente, en el caso de ser turista se desglosara entre interncacional o nacional. Ademas de pedir 
	// 	los datos basicos del cliente.
	//		Nacional o Regional: nombre, apellido, DNI, teléfono, domicilio, empresa, teléfonos laborales, domicilio laboral, licencia de conducir nacional.
	//		Extranjero: nombre, apellido, pasaporte, teléfono, hotel o agencia de turismo, empresa, teléfonos laborales, domicilio laboral, licencia de conducir internacional.
	
	Escribir "Ingrese su edad"
	Leer edad
	Si edad >= 25 Entonces
		Escribir "¿Usted es recidente de bariloche o turista?"
		Escribir "1: recidente"
		Escribir "2: turista"
		Leer procedencia
		Si procedencia == 1 Entonces
			usuario = recidente
			Escribir "Para proseguir con el contrato de alquiler se le pediran algunos datos: "
			//Insertar funcion de recopilacionDatos
			//aplicar la funcion de registroUsuarioIdentificador
			//Aplicar funcion controlLicencia
			Escribir "Se han guardado sus datos correctamente"
		SiNo
			usuario = turista
			//Extranjero: nombre, apellido, pasaporte, teléfono, hotel o agencia de turismo, empresa, teléfonos laborales, domicilio laboral, licencia de conducir internacional.
			Escribir "Para proseguir con el contrato de alquiler se le pediran los siguientes datos: "
			//Insertar funcion de recopilacionDatos
			//Aplicar la funcion de registroUsuarioIdentificador
			//Aplicar funcion controlLicencia
			Escribir "Se han guardado sus datos correctamente"
		FinSi

	SiNo
		Escribir "El usuario no posee la edad minima para poder alquilar vehiculos en la zona de San Carlos de Bariloche"
	FinSi	
	

FinAlgoritmo


