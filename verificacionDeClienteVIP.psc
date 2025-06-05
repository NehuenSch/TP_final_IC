Proceso verificacionDeClienteVIP
	
    Definir cantidadViajes, numeroToken, intentos Como Entero
    Definir tokenGenerado, tokenIngresado, nombreCliente Como Cadena
    Definir esVip Como Logico
    
    esVip <- Falso
    intentos <- 0
	
    Escribir "�Cu�ntos viajes mayores o iguales a una semana ha realizado anteriormente?"
    Leer cantidadViajes
	
    Si cantidadViajes >= 8 Entonces
        esVip <- Verdadero
        Escribir "�Felicidades! Puede acceder a la categor�a VIP."
		
        Escribir "Ingrese su nombre:"
        Leer nombreCliente
		
        // Generar token aleatorio una vez
        numeroToken <- Aleatorio(1000, 9999)
        tokenGenerado <- ConvertirATexto(numeroToken)
        Escribir "Su c�digo token generado es: ", tokenGenerado
		
        Repetir
            Escribir "Ingrese el c�digo token que se le ha proporcionado:"
            Leer tokenIngresado
			
            intentos <- intentos + 1
			
            Si tokenIngresado = tokenGenerado Entonces
                Escribir "Token verificado correctamente. Se aplicar� un 15% de descuento por ser VIP."
                esVip <- Verdadero
            Sino
                Si intentos < 3 Entonces
                    Escribir "C�digo incorrecto. Intente nuevamente."
                FinSi
            FinSi
			
        Hasta Que (tokenIngresado = tokenGenerado) O (intentos = 3)
		
        Si esVip = Falso Entonces
            Escribir "Ha fallado los 3 intentos. No se aplicar� el descuento VIP."
        FinSi
		
    Sino
        esVip <- Falso
        Escribir "No cumple con la cantidad m�nima de viajes para ser VIP."
    FinSi
	
FinProceso

