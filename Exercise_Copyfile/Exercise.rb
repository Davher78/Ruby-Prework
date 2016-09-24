
# solicitamos el nombre del fichero fuente
puts "What is the source file?"
source_file = gets.chomp

# recuperamos el contenido del fichero origen
source_file_contents = IO.read(source_file)

# solicitamos fichero destino
puts "What is the destination file?"
destination_file = gets.chomp

# escribimos el contenido en el fichero destino
IO.write(destination_file,source_file_contents)