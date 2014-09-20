
	

			conversion = [[50, 'L'], [40, 'XL'], [10, 'X'], [9, 'IX'], [5, 'V'], [4, 'IV'], [1, 'I']]
			conversion = [[50, 'tegj'], [40, 'pish tegj'], [10, 'pish'], [9, 'glob pish'], [5, 'prok'], [4, 'glob prok'], [1, 'glob']]
			credit_conversion = [[1, ''], [17, 'Silver'], [14450, 'Gold'], [195.5, 'Iron']]

			# p "Please enter the key words eg => 'wood' if question about woodchuck"
			# p "=> pish tegj glob glob"
			# p "=> glob prok Silver"
			# p "=> glob prok Gold" 
			# p "=> glob prok Iron"
			# p "=> glob"
			# p "=> glob prok"
			# p "=> prok"
			# p "=> glob pish"
			# p "=> pish"
			# p "=> pish tegj"
			# p "=> tegj"
			# puts "Please enter a key word"



			 	number = 0   #starts the count
				roman = 'glob' #def the object/data
				intergalactic = roman.split(' ')

			 if intergalactic.grep(/Silver/).any? || intergalactic.grep(/Gold/).any? || intergalactic.grep(/Iron/).any?
			 	puts "how many Credits is #{roman}?"
			 elsif intergalactic.grep(/wood/).any?
			 	puts "how much wood could a woodchuck chuck if a woodchuck could chuck wood ? "
			 else
			 	puts "how much is #{roman}?"
			 end



			conversion.each do |x| # Iterate over the conversion and collects the data
			   galaxy = x[1].length # define the length of the word/object
			  while roman[0...galaxy] == x[1] # the objects condition ie ( range == length) is true
			    number += x[0]
			    roman[0..galaxy] = '' # object that is inclusive ie same 

			  end
			end


			credit_conversion.each do |y|
			  number *= y[0] if roman == y[1]


			end

				p "================================"
			if roman.empty?
				puts "#{intergalactic.join(' ')}#{roman} is #{number.to_i}!" 
			elsif roman == "wood"
				p 'Han Solo said -I have no idea what you are talking about Luke'
			else
				puts" #{intergalactic.join(' ')} is #{number.to_i} Credits! "

			end


