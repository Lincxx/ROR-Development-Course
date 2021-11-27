# --Arrays
# ordered list of items/elements
# maintains an index

arr = [1,2,3,4,5,6,7,8,9]

print arr
puts "\n"
puts arr.last

# using a range to make an array

x = 1..100
puts x.class

shuffled_array = x.to_a.shuffle! # ! - will mutate the caller, so x will be shuffled

print shuffled_array


y = 1..100

z = y.to_a.reverse!
print z 

puts z.length

# -- add to an array 
# end
z << 343
# front
z.unshift("-23")

puts z.last
puts z.first

z.append(-3.4)
# puts z

# -- remove dumps
z.uniq

# -- test for condition of an array
puts "Array empty ? #{z.empty?}"
b = []
puts "Array empty ? #{b.empty?}"

# -- does arrays include an item
puts "Does array include? #{z.include?(2)}"

# -- push and pop
z.push("new item")
t = z.pop
puts "Last item - #{t}"
puts "Array now - #{z}"

# -- Useful methods
# join 

puts arr.join('&')

# split - doesn't seem to work
# puts arr.split("&", 2)

# -- a way to convert a string into an array
r = %w(this is a pretty)
print r
puts 

# -- Iterators 
r.each do |item|
    puts item
end

# the prefer way - one block
r.each {|item| puts item}

r.each {|item| puts item.capitalize}

# -- select
z = (1..100).to_a.shuffle!
print z.select {|number| number.odd?}








