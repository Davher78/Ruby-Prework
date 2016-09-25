

# funcion fizzbuzz sin parámetros

def CadenaSalida(numero, reglas)

      salida =""
	  # comprobamos si es multiplo de 3

	  if numero.modulo(reglas["Fizz"]) == 0 
	       salida = "Fizz "
	  end
	  # comprobamos si es multiplo de 5
	  if numero.modulo(reglas["Buzz"]) == 0 
	       salida = salida + "Buzz "
	  end
	  # comprobamos si ha sido multiplo de 3 o de 5 o de ambos
	  if salida == "" 
	       salida = numero
	  end

	  return salida

end

# llamamos a la función

def FizzBuzz(reglas)

	for num in (reglas["Ini"]..reglas["Fin"])
		  
		  # escribimos la salida
		  puts CadenaSalida(num,reglas)

	end

end

rules = {}

puts "Introduce número inicial"
rules["Ini"] = gets.chomp.to_i

puts "Introduce número final"
rules["Fin"] = gets.chomp.to_i

puts "Introduce número Fizz"
rules["Fizz"] = gets.chomp.to_i

puts "Introduce número Buzz"
rules['Buzz'] = gets.chomp.to_i

FizzBuzz(rules)

