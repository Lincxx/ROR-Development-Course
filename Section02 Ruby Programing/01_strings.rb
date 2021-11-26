#sentence = "My name is Jeremy"

first_name = "Jeremy"
last_name  = "Lincon"

#-- concat 
puts first_name + last_name

# interpolation
puts "My first name is #{first_name} and my last name is #{last_name}"
puts 'My first name is #{first_name} and my last name is #{last_name}'

#-- Methods, how to find and use
# to find out what something is (string, int, float, bool) - object.class
# if we want to find what methods are avaivble we do .methods (eg. 10.methods)
full_name = first_name + " " + last_name

puts full_name.length
puts full_name.reverse
puts full_name.capitalize
puts "".empty?
puts "".nil?
puts nil.nil?

sentence = "Welcome to the jungle"
puts sentence.sub("the jungle", "utopia") #gusb is a global sub


#-- Common Methods
puts full_name.reverse
puts full_name.capitalize
puts "".empty?
puts "".nil?
puts nil.nil?

sentence = "Welcome to the jungle"
puts sentence.sub("the jungle", "utopia") #gusb is a global sub


#-- Variables
new_first_name = first_name
# new_first_name point to the location of first_name, not the value, so if we change first_name, new_first_name stays the same
puts new_first_name 

first_name = "Bob"
puts new_first_name

#-- Escaping
single_quotes = 'Jeremy asked \'Hey John, how are you doing?\''
puts single_quotes


#-- Gets and chomp
puts "What is your first name"
first_name = gets.chomp

puts "Thanks, #{first_name}"

puts "Double a number"
num = gets.chomp

puts "#{num.to_i * 2}"
