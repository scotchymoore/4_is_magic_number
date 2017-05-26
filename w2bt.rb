require 'numbers_and_words'



def num_to_string(numbers)
  num_word = numbers.to_words remove_hyphen: true
  num_value = num_word.length.to_i
  num_val_word = num_value.to_words
  puts "#{numbers} is equal to #{num_val_word}."
  if num_value != 4
    numbers = num_value
    num_to_string(numbers)
  end
end

def magic_num_four
puts "Enter number or type exit: "
choice = gets.chomp
  if choice == 'exit'
    exit
  end
numbers = choice.to_i.abs
num_to_string(numbers)
puts "And four is a magic number"
magic_num_four
end
magic_num_four
