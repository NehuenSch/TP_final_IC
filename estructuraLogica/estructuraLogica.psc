Algoritmo TP_Integrador
	Escribir 'Bienvenido a RentCar del Sur'
	stock = Verdadero
	Si stock=Verdadero Entonces
		Escribir 'Se le ofrecen 4 paquetes de alquiler'
		Escribir '1: alquiler de 24 horas o un dia'
		Escribir '2: alquiler de 48 horas o dos dias'
		Escribir '3: alquiler de 168 horas o siete dias'
		Escribir '4: alquiler de un mes o superior'
		Escribir 'Si usted preciona la opcion 4, se le contara un precio base de un mes y despues se le agregaran los dias extra que usted desea alquilar'
		Leer op_alquiler
		Si vehiculo_elegido='traccion_simple' Entonces
			precio <- 30000
		SiNo
			precio <- 45000
		FinSi
		Si op_alquiler=4 Entonces
			Escribir 'Ingrese cuantos dias extra va a realizar'
			Leer precio_extra
			precio <- precio*30+precio*precio_extra
		FinSi
		Escribir 'Inrgese la fecha de alquiler con el formato DD-MM-AAAA'
		Leer dia_alquiler
		Leer mes_alquiler
		Leer ANO_ALQUILER
		// se define en que momento del año se esta realizando el alquiler para modificar los precios por demanda
		Si (mes_alquiler>=6 Y mes_alquiler<=9) O (mes_alquiler=12 O mes_alquiler>=1 Y mes_alquiler<3) Entonces
			// se agrega 30 MOD  por ser temporada alta
			porcentajeTemporada <- precio*0.3
			precio <- precio+porcentajeTemporada
			Si mes_alquiler>=6 Y mes_alquiler<=9 Entonces
				Escribir 'Al importe se le agregan $10.000 por equipo de invierno'
				precio <- precio+10000
			FinSi
		FinSi
		Escribir 'Tiene dos planes de seguro'
		Escribir '1: Proteccion contra daños menores'
		Escribir '2: Proteccion contra todo riesgo'
		Leer seguro
		Si seguro=1 Entonces
			precio <- precio+5000
		SiNo
			precio <- precio+15000
		FinSi
		Escribir 'El importe total por la renta del vehiculo seria de $', precio
		Escribir ' '
		Escribir '¿Desea concretar el contrato?'
		Escribir '1: SI'
		Escribir '2 NO'
		Leer seguir_renta
		Si seguir_renta=1 Entonces
			Escribir 'falta muy poco para que este sobre ruedas'
			Escribir llamar, funcion, informacionUsuario
			// inserrtar funcion informacionUsuario
		SiNo
			Escribir 'Nos vemos la proxima'
		FinSi
	SiNo
		Escribir 'Ingrese mas tarde que nos estan por devolver un vehiculo'
	FinSi
FinAlgoritmo
