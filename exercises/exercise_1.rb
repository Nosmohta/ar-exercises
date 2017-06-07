require_relative '../setup.rb'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :carries_at_least_men_or_women


  def carries_at_least_men_or_women
    if (:mens_apparel == false) && (:womens_apparel == false)
      errors.add(:apparel, "needs to have atleast one apparel for sale")
    end
  end

end


burnaby = Store.new({name: 'Burnaby',
                     annual_revenue: 300000,
                     mens_apparel: true,
                     womens_apparel: true
                    })
burnaby.save

richmond = Store.new({name: 'Burnaby',
                     annual_revenue: 1260000,
                     mens_apparel: false,
                     womens_apparel: true
                    })
richmond.save


gastown = Store.new({name: 'Burnaby',
                     annual_revenue: 190000,
                     mens_apparel: true,
                     womens_apparel: false
                    })
gastown.save

puts Store.count






# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)