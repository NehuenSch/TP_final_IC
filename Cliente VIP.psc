//CLiente VIP
Proceso guardar
			Definir nombre Como Cadena
			Definir codigo Como Cadena
			Definir valido Como Logico
			Definir i Como Entero 
			Definir digito Como Caracter
			
			Escribir "Ingrese su nombre:"
			Leer nombre
		Repetir
			Escribir "Ingrese su codigo de 4 numeros:"
			Leer codigo
			
			valido <- Verdadero
			
			Si Longitud(codigo) <> 4 Entonces 
				valido <- Falso
			Sino 
				Para i <- 1 Hasta 4
					digito <- Subcadena (codigo, i, i)
					Si digito < "0" o digito > "9" Entonces
						
						valido <- Falso
					FinSi
				FinPara
			FinSi
			
			si no valido Entonces
				Escribir "Error: El codigo debe tener exactamente 4 digitos numericos"
			fin si
		Hasta Que valido
			Escribir "codigo aceptado: ", codigo
			Escribir "--------------------------------"
			Escribir "Nombre ingresado: ", nombre
			Escribir "Código ingresado: ", codigo
			
FinProceso
