

def newSorth (newarray)

	words = newarray

	# identificamos la primera palabra
	primera = words[0]

	# transformamos todas las palabras del array a minusculas
	a = 0
	words.each do |palabra|

		words[a] = palabra.downcase
		a = a+1

	end

    # ordenamos y actualizamos el array 
    words = words.sort

    # identificamos la primera palabra del array y ponemos en mayuscula
	a = 0
	words.each do |palabra|

		if palabra == primera.downcase
            words[a] = palabra.capitalize
		end
		a = a+1

	end

    # devolvemos el array ordenado
	return words

end

puts "Introduce sentencia"

sentencia = gets.chomp.to_s

words = {}
# creamos un array con la sentencia
words = sentencia.split(" ")

# mirar si existen signos de puntuación o admiracion en cuyo caso se elimina
a = 0
words.each do |palabra|

	words[a] = palabra.delete ".!"
	a = a+1

end

# ordenamos con la funcion creada para ello
words = newSorth(words)

# presentamos por pantalla el resultado
puts words

