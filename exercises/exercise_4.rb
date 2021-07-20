require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


surrey = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: 'Whistler', annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
yaletown = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "Store Name: #{store.name}. Store AR: #{store.annual_revenue}"
end

@low_rev_womens = Store.where("annual_revenue < ?", 1000000).where(womens_apparel: true)

@low_rev_womens.each do |store|
  puts "Sells womens clothes and AR < 1000000: #{store.name}"
end