
class Galaxy
    attr_reader :input
    # def initialize
    # end
   
    def conversion(input)
      input.gsub!(/how .* is /, '') # Regular expressions to get what we need
      input = input[0..-3] # I forgot to remove the question mark
      @input = input +'' # Creates a new copy of
      # Conversions for the jibberish

      conversion = {
        'tegj' => 50,
        'pish tegj' => 40,
        'pish' => 10,
        'glob pish' => 9,
        'prok' => 5,
        'glob prok' => 4,
        'glob' => 1
      }

      # 1 Metal : Credits Ratio

      ratio = {
        '' => 1,
        'Silver' => 17,
        'Gold' => 14450,
        'Iron' => 195.5
      }

      # Initialising variables

      original = '' + input # Keeping the original
      output = 0

      # Going through the hash like an array

      conversion.each do |k, v|
        length = k.length # Grabbing the length of the intergalactic in the conversion

        while input[0...length] == k # Checks to see whether the input has the same value as the intergalactic
          output += v # If so, add the value to the output
          input[0..length] = '' # And remove the intergalactic from the input
        end
      end



      unless ratio[input].nil?
        output *= ratio[input]
      end

      return p 'I have no idea what you are talking about' if original == input # For random questions
      p "#{original} is #{output.to_i}#{' Credits' unless input.empty?}" # Give the output

    end

    

end

    Galaxy.new.conversion('how much is pish tegj glob glob ?')
    Galaxy.new.conversion('how many Credits is glob prok Silver ?')
    Galaxy.new.conversion('how many Credits is glob prok Gold ?')
    Galaxy.new.conversion('how many Credits is glob prok Iron ?')
    Galaxy.new.conversion('how much wood could a woodchuck chuck if a woodchuck could chuck wood ?')
