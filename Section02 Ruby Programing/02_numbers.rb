# -- Math Bascis
puts 1+2
puts 1-2
puts 1*2
puts 1/2
puts 1%2
puts 10/4 # interger divison  
puts 10/4.0 # float divison  
puts 10/4.to_f # float divison  

# -- Muliple string
puts "hi" * 3
puts "-" * 30
20.times {print "-"}
20.times {puts "hi"}
20.times {puts rand(11)}

# -- Convert string to int, float
x = "5".to_i
puts x

puts "Simple Calculator"
25.times {print "-"}
puts "\nEnter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "The first number multiplied by the second numbers is #{num_1.to_i * num_2.to_i}"
