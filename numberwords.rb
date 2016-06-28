require("pry")
class String
  define_method(:numberwords) do
    output_string = []
    array_digits = ["one","two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    array_teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    array_tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    array_big = ["hundred", "thousand", "million", "billion", "trillion"]


    if ( self.length  == 1 )
      output_string.push(array_digits[self[0].to_i - 1])
    elsif ( self.length  == 2 ) & ( self[0].to_i == 1)
      output_string.push(array_teens[self[1].to_i])
    elsif ( self.length  == 2 ) & ( self[0].to_i != 1)
      output_string.push(array_tens[self[0].to_i - 1])
      output_string.push(array_digits[self[1].to_i - 1])
      output_string.join("")
    elsif ( self.length  == 3 ) & ( self[0].to_i != 1)
      output_string.push(array_digits[self[0].to_i - 1])
      output_string.push(array_big[0])
      output_string.push(array_tens[self[0].to_i - 1])
      output_string.push(array_digits[self[1].to_i - 1])
      output_string.join("")
    elsif ( self.length  == 4 ) & ( self[0].to_i != 1)
      output_string.push(array_digits[self[0].to_i - 1])
      output_string.push(array_big[1])
      output_string.push(array_digits[self[1].to_i - 1])
      output_string.push(array_big[0])
      output_string.push(array_tens[self[2].to_i - 1])
      output_string.push(array_digits[self[3].to_i - 1])
      output_string.join("")
    elsif ( self.length  == 5 ) & ( self[0].to_i != 1)
      output_string.push(array_teens[self[1].to_i - 1])
      output_string.push(array_big[1])
      output_string.push(array_digits[self[2].to_i - 1])
      output_string.push(array_big[0])
      output_string.push(array_tens[self[3].to_i - 1])
      output_string.push(array_digits[self[4].to_i - 1])
      output_string.join("")
    end
  end
end
puts "5".numberwords()
puts "17".numberwords()
puts "25".numberwords()
puts "261".numberwords()
puts "3456".numberwords()
puts "56791".numberwords()
