require 'dance_class'
require 'class_list'

puts "Hello! What would you like to do? :)"
puts "1. Add a new class"
input = gets.chomp
if input == "1"
  while true do
    puts "1. change location: #{@location}\n#{@address}\n#{@day}\n#{@levels_and_times}\n#{@teachers}\n}'quit' -  quit}"
    input = gets.chomp

  end
end
