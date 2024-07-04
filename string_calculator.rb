# string_calculator.rb

class StringCalculator
	def self.add(numbers)
		# Return 0 if the input string is empty
    return 0 if numbers.empty?

    # Return number itself if the input string is single value
    return numbers.to_i if numbers.length.eql?(1)

    # Return sum of numbers seperated with commas
    numbers.split('').map(&:to_i).sum
	end
end