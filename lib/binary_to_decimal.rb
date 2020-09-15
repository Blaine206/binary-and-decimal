# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# Take binary numbers and calc them from right to left based on the number of index options
# What am I trying to get this code to execute?



binary_arr = Array.new(8) { rand(2) }

p binary_arr

def binary_to_decimal(binary_arr)
  total = 0
  binary_arr.each_with_index do | onezee, index |
    rev_index = binary_arr.length - 1 - index
    total += onezee * 2 ** rev_index
  end
  return total
end

p binary_to_decimal(binary_arr)
