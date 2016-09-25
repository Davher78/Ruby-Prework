
puts "Introduce sentencia"

sentencia = gets.chomp.to_s

words = {}
# creamos un array con la sentencia
words = sentencia.split(" ")

# mirar si es un signo de puntuación en cuyo caso se elimina
words.each do |palabra|
	
    if palabra.include? '.' || palabra.include? '!' 
    	# se elimina el signo de puntuación
    	# words.delete_at palabra
    end
    
end

# ordenamos y presentamos por pantalla, tener cuidado ya que las mayusculas van delante
puts words.sort

=end
