Algoritmo informacionUsuario
	// Se debe de separar entre turista y recidente, en el caso de ser turista se desglosara entre interncacional o nacional. Ademas de pedir 
	// 	los datos basicos del cliente.
	//		Nacional o Regional: nombre, apellido, DNI, teléfono, domicilio, empresa, teléfonos laborales, domicilio laboral, licencia de conducir nacional.
	//		Extranjero: nombre, apellido, pasaporte, teléfono, hotel o agencia de turismo, empresa, teléfonos laborales, domicilio laboral, licencia de conducir internacional.
	
	
	Escribir "¿Usted es recidente de bariloche o turista?"
	Escribir "1: recidente"
	Escribir "2: turista"
	Leer procedencia
	Si procedencia == 1 Entonces
		usuario = recidente
		Escribir "Para proseguir con el contrato de alquiler se le pediran los siguientes datos: "
		//Insertar funcion de recopilacionDatos
		//aplicar la funcion de registroUsuarioIdentificador
		Escribir "Ingrese la fecha de vto de su licencia de conducir: "
		Leer vto_licencia
	SiNo
		
		usuario = turista
		//Extranjero: nombre, apellido, pasaporte, teléfono, hotel o agencia de turismo, empresa, teléfonos laborales, domicilio laboral, licencia de conducir internacional.
		Escribir "Para proseguir con el contrato de alquiler se le pediran los siguientes datos: "
		//Insertar funcion de recopilacionDatos
		//Aplicar la funcion de registroUsuarioIdentificador
		Escribir "Ingrese la fecha de vto de su licencia de conducir: "
		Leer vto_licencia
		
		
		
	FinSi
FinAlgoritmo
