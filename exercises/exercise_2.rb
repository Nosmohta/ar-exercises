require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)
p @store1.name
@store2 = Store.find(2)

@store1.name = 'New Name'
p @store1.name


