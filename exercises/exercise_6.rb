require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
  validates_numericality_of :hourly_rate
  validates :hourly_rate, inclusion: [40..200]
  validates :store, presence: true

end


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andrew", last_name: "Thomson", hourly_rate: 60)
@store1.employees.create(first_name: "Anita", last_name: "Thomson", hourly_rate: 60)

@store2.employees.create(first_name: "Elliot", last_name: "Kid", hourly_rate: 60)
@store2.employees.create(first_name: "Wallace", last_name: "Kid", hourly_rate: 60)
@store2.employees.create(first_name: "Grace", last_name: "Other Kid", hourly_rate: 60)

