require_relative '../setup'

puts "Exercise 1"
puts "----------"

burnaby = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: 'Richmond', annual_revenue: 1260000, womens_apparel: true, mens_apparel: false)
gastown = Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

store_count = Store.count()

puts store_count