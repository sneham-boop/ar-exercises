require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Total revenue is #{Store.sum('annual_revenue')}"
puts "Average annual revenue is #{Store.sum('annual_revenue')/Store.count}"

count_of_stores = Store.where('annual_revenue>1000000').count

puts "#{count_of_stores} stores generate atleast 1000000 in revenue."