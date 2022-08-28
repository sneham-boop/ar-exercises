require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

@store2.employees.create(first_name:"Gindi", last_name: "Tinya", hourly_rate: 4)

@emp1 = Employee.new

@store10 = Store.new
@store10.name = "Oakville, ON"
@store10.annual_revenue = -6
@store10.mens_apparel = false
@store10.womens_apparel = false
@store10.save

if @store10.errors.any? 
  @store10.errors.each do |error|
   puts "#{error.message}"
  end
end 

if @emp1.errors.any? 
  @emp1.errors.each do |error|
   puts "#{error.message}"
  end
end 

