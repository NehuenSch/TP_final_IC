Algoritmo datosObligatorios
	Escribir 'Es necesario que se completen todos los campos que se muestran a continuacion'
	Escribir 'Ingrese su nombre: '
	Leer nombre
	long_nombre <- Longitud(nombre)
	Escribir 'Ingrese su apellido: '
	Leer apellido
	long_apellido <- Longitud(apellido)
	Escribir 'Ingrese su telefono: '
	Leer telefono
	long_telefono <- Longitud(telefono)
	Escribir 'Ingrese su domicilio donde permanecera la siguiente semana. En caso contrario ingrese su domicilio permanente: '
	Leer domicilio
	long_domicilio <- Longitud(domicilio)
	vacio <- Longitud('')
	Mientras long_nombre==vacio O long_apellido==vacio O long_telefono==vacio O long_domicilio==vacio Hacer
		Escribir 'Todos los campos deben de completarce, de lo contrario no podra concretar la renta del vehiculo'
		Escribir 'Ingrese su nombre: '
		Leer nombre
		long_nombre <- Longitud(nombre)
		Escribir 'Ingrese su apellido: '
		Leer apellido
		long_apellido <- Longitud(apellido)
		Escribir 'Ingrese su telefono: '
		Leer telefono
		long_telefono <- Longitud(telefono)
		Escribir 'Ingrese su domicilio donde permanecera la siguiente semana. En caso contrario ingrese su domicilio permanente: '
		Leer domicilio
		long_domicilio <- Longitud(domicilio)
	FinMientras
	Escribir 'Ingrese empresa: '
	Leer empresa
	Escribir 'Ingrese el telefono laboral: '
	Escribir tel_laboral
	Escribir 'Ingrese el domicilio laboral: '
	Leer dom_laboral
FinAlgoritmo
