# string_calculator.rb

class StringCalculator
	def self.add(numbers)
		# Return 0 if the input string is empty
    return 0 if numbers.empty?

    # Return number itself if the input string is single value
    numbers.to_i
	end
end