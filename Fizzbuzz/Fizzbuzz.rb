

# funcion fizzbuzz sin parámetros

def CadenaSalida(numero)

      salida =""
	  # comprobamos si es multiplo de 3
	  if numero.modulo(3) == 0 
	       salida = "Fizz "
	  end
	  # comprobamos si es multiplo de 5
	  if numero.modulo(5) == 0 
	       salida = salida + "Buzz "
	  end
	  # comprobamos si ha sido multiplo de 3 o de 5 o de ambos
	  if salida == "" 
	       salida = numero
	  end

	  return salida

end

# llamamos a la función

def FizzBuzz(inicio, fin)

	for num in (inicio..fin)
		  
		  # escribimos la salida
		  puts CadenaSalida(num)

	end

end

FizzBuzz(1, 100)

