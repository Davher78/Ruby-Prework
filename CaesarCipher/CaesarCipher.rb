
def special_character(number,posicion)

		number = number.ord

		# si es un espacio devuelve un espacio
		if number == 32 
			return number.chr
		end

		# realizamos la transformacion
		resultado = number + posicion
		return resultado.chr

end

def solve_cipher(input, position)
  #your code goes here

    letters = []
    newletters = []
	letters = input.split(//)
    
	letters.each do |letter|

        newletters << special_character(letter,position)

	end

	return newletters.join

end

puts solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)