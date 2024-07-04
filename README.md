# string-calculator
 string_calculator : https://blog.incubyte.co/blog/tdd-assessment/

#### StringCalculator is a Ruby module that provides a simple method for adding numbers contained within a string. This module is useful for parsing and calculating sums from strings that contain comma-separated numbers.

## What I've done: 
- Simple cases are handled, including empty string, single numbers, and two numbers, yielding the expected sum.
- Code is regularly refactored post successful tests, maintaining simplicity and readability, with broad test coverage to handle various input formats.
- The `add` method accommodates any number of comma or newline-separated numbers, ensuring flexibility and scalability.
- Newline handling and custom delimiters are supported, allowing users to define delimiters via a separate line at the input's start.
- Exception handling for negative numbers is implemented, triggering an exception with all negative numbers listed, separated by commas, for clear user feedback.

## To setup project
- Clone repo using cmd : git clone https://github.com/Abhinav-Shere/string-calculator.git
- Make sure you have Ruby installed on your system.

- Install the RSpec gem if not already installed: gem install rspec

## To run rspec 
- rspec spec

## Usage

To use the String Calculator, follow these steps:

1. Navigate to the project directory in your terminal.

2. Run the RSpec command to execute the tests:

This will run the test suite and ensure that the calculator functions correctly.

3. You can also use the String Calculator in your own Ruby programs by requiring the `string_calculator.rb` file:

```ruby
require_relative 'string_calculator'

result = StringCalculator.add("1,2,3")
puts result # Output: 6
