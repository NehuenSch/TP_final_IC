Algoritmo datosObligatorios
	Escribir "Es necesario que se completen todos los campos que se muestran a continuacion"
	Escribir "Ingrese su nombre: "
	leer nombre
	long_nombre = Longitud(nombre)
	Escribir "Ingrese su apellido: "
	Leer apellido
	long_apellido = Longitud(apellido)
	Escribir "Ingrese su telefono: "
	Leer telefono
	long_telefono = Longitud(telefono)
	Escribir "Ingrese su domicilio permanete o temporal: " 
	Leer domicilio
	long_domicilio = Longitud(domicilio)
	
	vacio = Longitud("")
	
	
	Mientras long_nombre == vacio o long_apellido == vacio o long_telefono == vacio o long_domicilio == vacio Hacer
		Escribir "Todos los campos deben de completarce"
		Escribir "Ingrese su nombre: "
		leer nombre
		long_nombre = Longitud(nombre)
		Escribir "Ingrese su apellido: "
		Leer apellido
		long_apellido = Longitud(apellido)
		Escribir "Ingrese su telefono: "
		Leer telefono
		long_telefono = Longitud(telefono)
		Escribir "Ingrese su domicilio permanete o temporal: " 
		Leer domicilio
		long_domicilio = Longitud(domicilio)
		
	FinMientras
	
	
	
FinAlgoritmo
