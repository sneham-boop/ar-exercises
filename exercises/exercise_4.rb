require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:

# - Surrey (annual_revenue of 224000, carries women's apparel only)
# - Whistler (annual_revenue of 1900000 carries men's apparel only)
# - Yaletown (annual_revenue of 430000 carries men's and women's apparel)

# 2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
# 3. Loop through each of these stores and output their name and annual revenue on each line.
# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.



surrey = Store.new
surrey.name = "Surrey"
surrey.annual_revenue = 224000
surrey.mens_apparel = false
surrey.womens_apparel = true
surrey.save

whistler = Store.new
whistler.name = "Whistler"
whistler.annual_revenue = 1900000
whistler.mens_apparel = true
whistler.womens_apparel = false
whistler.save


yaletown = Store.new
yaletown.name = "Yaletown"
yaletown.annual_revenue = 430000
yaletown.mens_apparel = true
yaletown.womens_apparel = true
yaletown.save

puts "\n\n\n"
@mens_stores = Store.where(mens_apparel: true, womens_apparel: false )

@mens_stores.each do |store|
  puts "Store name: #{store.name} and annual revenue is #{store.annual_revenue}"
end

puts "\n\n\n"
@womens_stores = Store.where('womens_apparel= true AND annual_revenue<1000000')

@womens_stores.each do |store|
  # if store.annual_revenue <= 1000000 
    puts "Store name: #{store.name} and annual revenue is #{store.annual_revenue}"
  # end
end