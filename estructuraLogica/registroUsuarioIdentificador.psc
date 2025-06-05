Algoritmo registroUsuario
	Escribir "Para continuar con la inscripcion a la planilla se le pedira que caregue su DNI o su Pasaporte"
	Escribir " "
	Escribir "¡AVISO!"
	Escribir "Recuerde que los paises asociados al MERCOSUR pueden utilizar su DNI"
	Escribir "1 para utilizar DNI"
	Escribir "2 para utilizar pasaporte"
	Leer op_identificador
	
	Si op_identificador == 1 Entonces
		Escribir "Ingrese su numero de DNI. Se debe de excluir el uso de puntos y comas."
		Leer DNI
	SiNo
		Escribir "Ingrese su numero de pasaporte. Se debe de excluir el uso de puntos y comas."
		Leer pasaporte
	FinSi	
FinAlgoritmo
