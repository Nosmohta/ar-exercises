require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@all_stores = Store.all
p @all_stores.sum(:annual_revenue)
p @all_stores.sum(:annual_revenue)/@all_stores.count

@top_performers = Store.where("annual_revenue > 1000000").count
p @top_performers