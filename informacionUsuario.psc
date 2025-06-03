Algoritmo informacionUsuario
	// Se debe de separar entre turista y recidente, en el caso de ser turista se desglosara entre interncacional o nacional. Ademas de pedir 
	// 	los datos basicos del cliente.
	//		Nacional o Regional: nombre, apellido, DNI, teléfono, domicilio, empresa, teléfonos laborales, domicilio laboral, licencia de conducir nacional.
	//		Extranjero: nombre, apellido, pasaporte, teléfono, hotel o agencia de turismo, empresa, teléfonos laborales, domicilio laboral, licencia de conducir internacional.
	
	
	Escribir "¿Usted es argentino o es extranjero?"
	Escribir "1: recidente"
	Escribir "2: turista"
	Leer procedencia
	Si procedencia == 1 Entonces
		Escribir "Para proseguir con el contrato de alquiler se le pediran los siguientes datos: "
		Escribir "Ingrese su nombre: "
		leer nombre
		Escribir "Ingrese su apellido: "
		Leer apellido
		Escribir "Ingrese su DNI: "
		Leer DNI
		Escribir "Ingrese su telefono: "
		Leer telefono
		Escribir "Ingrese su domicilio: " 
		Leer domicilio
		Escribir "Ingrese empresa: " 
		Leer empresa
		Escribir "Ingrese el telefono laboral: "
		Escribir tel_laboral
		Escribir "Ingrese el domicilio laboral: "
		Leer dom_laboral
		Escribir "Ingrese la fecha de vto de su licencia de conducir: "
		Leer vto_licencia
	SiNo
		//Extranjero: nombre, apellido, pasaporte, teléfono, hotel o agencia de turismo, empresa, teléfonos laborales, domicilio laboral, licencia de conducir internacional.
		Escribir "Para proseguir con el contrato de alquiler se le pediran los siguientes datos: "
		Escribir "Ingrese su nombre: "
		leer nombre
		Escribir "Ingrese su apellido: "
		Leer apellido
		Escribir "Ingrese su pasaporte: "
		Leer pasaporte
		Escribir "Ingrese su hotel o empresa de turismo que lo acompaña: "
		Leer domicilio_temporal
		Escribir "Ingrese su domicilio: " 
		Leer domicilio
		Escribir "Ingrese empresa: " 
		Leer empresa
		Escribir "Ingrese el telefono laboral: "
		Escribir tel_laboral
		Escribir "Ingrese el domicilio laboral: "
		Leer dom_laboral
		Escribir "Ingrese la fecha de vto de su licencia de conducir: "
		Leer vto_licencia
	FinSi
FinAlgoritmo
