require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(name: 'Burnaby')
@store2 = Store.find_by(name: 'Richmond')

@store1.name = "Milton"

puts "Store 1's name was changed to #{@store1.name}."