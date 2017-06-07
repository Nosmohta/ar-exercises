require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
p "enter a name"

p Store.count
input_name = STDIN.gets.chomp()

s = Store.create( {name: input_name})

s.errors.full_messages.each do |err|
  puts err
end
