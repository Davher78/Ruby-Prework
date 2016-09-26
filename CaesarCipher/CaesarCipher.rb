
def solve_cipher(input)
  #your code goes here

    letters = []
    newletters = []
	letters = input.split(//)
    
	letters.each do |letter|

		number = letter.ord
		newletter = (number-1).chr
        newletters << newletter

	end

	return newletters.join

end

puts solve_cipher("ifmmp")
# should return "hello"