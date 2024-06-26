require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Jim", last_name: "Halpert", hourly_rate: 60)

@store1.employees.create(first_name: "Dwight", last_name: "Schrute", hourly_rate: 50)

@store2.employees.create(first_name: "Andy", last_name: "Bernard", hourly_rate: 20)

@store2.employees.create(first_name: "Karen", last_name: "Filippelli", hourly_rate: 100)

@employees = Employee.all

@employees.each do |employee|
  puts "#{employee.last_name}, #{employee.first_name}"
end