ALGORITMO BusquedaNumeroPares
    // Definición de la lista de números pares del 1 al 10
numerosPares : ENTERO[5]
    numerosPares[0] <- 2
    numerosPares[1] <- 4
    numerosPares[2] <- 6
    numerosPares[3] <- 8
    numerosPares[4] <- 10
	
numeroBuscado, resultado : ENTERO
	
    // Solicitar al usuario que ingrese un número
    ESCRIBIR "Ingrese un número del 1 al 10: "
    LEER numeroBuscado
	
    // Validar que el número esté en el rango
    SI numeroBuscado < 1 O numeroBuscado > 10 ENTONCES
        ESCRIBIR "Por favor, ingrese un número válido entre 1 y 10."
        RETORNAR
    FIN SI
	
    // Realizar búsqueda binaria
    resultado <- BusquedaBinaria(numerosPares, numeroBuscado)
	
    // Mostrar el resultado
    SI resultado <> -1 ENTONCES
        ESCRIBIR "El número ", numeroBuscado, " está en la lista de números pares."
    SINO
        ESCRIBIR "El número ", numeroBuscado, " NO está en la lista de números pares."
    FIN SI
FIN ALGORITMO

// Definición de la función de búsqueda binaria
FUNCION BusquedaBinaria(arreglo : ENTERO[], numero : ENTERO) : ENTERO
			izquierda, derecha, medio : ENTERO
				izquierda <- 0
				derecha <- 4 // Ya que tenemos 5 elementos en el arreglo
				
				MIENTRAS izquierda <= derecha HACER
					medio <- izquierda + (derecha - izquierda) / 2
					
					SI arreglo[medio] = numero ENTONCES
						RETORNAR medio // Retorna la posición
					FIN SI
					
					SI arreglo[medio] < numero ENTONCES
						izquierda <- medio + 1
					SINO
						derecha <- medio - 1
					FIN SI
				FIN MIENTRAS
				
				RETORNAR -1 // No encontrado
FIN FUNCION


