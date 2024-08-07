# string_calculator.rb

class StringCalculator
	def self.add(numbers)
		# Return 0 if the input string is empty
    return 0 if numbers.empty?

    # Return number itself if the input string is single value
    return numbers.to_i if numbers.length.eql?(1)

    # Remove all the delimeters from input string
    number_arr = numbers.scan(/-?\d+/).map(&:to_i)
    
    # Find negative numbers
    negatives = number_arr.select { |i| i < 0 }

    # Raise an exception if negative numbers are found
    raise "negative not allowed: #{negatives.join(', ')}" if negatives.any?

    # Return sum of numbers
    number_arr.sum
	end
end