# if/else

if true 
    puts "hello"
else
    puts "bye"
end

cond_1 = true
cond_2 = true

if cond_1 && cond_2
    puts "true"
else
    puts "false"
end

cond_1 = true
cond_2 = false

if cond_1 && cond_2
    puts "true"
else
    puts "false"
end


cond_1 = true
cond_2 = false

if cond_1 || cond_2
    puts "true"
else
    puts "false"
end

# -- !

cond_1 = true


if !cond_1
    puts "true"
else
    puts "false"
end

# -- if/elsif/else

name = "Jack"
if name == "Jeremy"
    puts "Hi #{name}"
elsif name == "Jack"
    puts "Hi #{name}"
else
    puts "Hey you!!!"
end
