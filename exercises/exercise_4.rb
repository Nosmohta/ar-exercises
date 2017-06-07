require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.new({name: 'Surrey',
                     annual_revenue: 224000,
                     mens_apparel: false,
                     womens_apparel: true
                    }).save


whistler = Store.new({name: 'Whistler',
                     annual_revenue: 1900000,
                     mens_apparel: true,
                     womens_apparel: false
                    }).save


yaletown = Store.new({name: 'Yaletown',
                     annual_revenue: 430000,
                     mens_apparel: true,
                     womens_apparel: true
                    }).save

p Store.count


@mens_stores = Store.where( {mens_apparel: true} )
@mens_stores.each do |store|
  p '------------------'
  p store.name
  p store.annual_revenue.to_s
  p'-------------------'
end

# @womens_stores = Store.where( {womens_apparel: true, annual_revenue:  { 'gt': 1000000 } )

@womens_stores = Store.where( "womens_apparel = true AND annual_revenue > 1000000" )

p @womens_stores
p @womens_stores.count


# Surrey (annual_revenue of 224000, carries women's apparel only)
#  Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)