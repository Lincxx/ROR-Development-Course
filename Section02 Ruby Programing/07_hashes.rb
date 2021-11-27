# -- Hashes aka Dictionary

sample_hash = {"a" => 1, "b" => 2, "c" => 3}
about_me = {"first_name" => "Jeremy", "last_name" => "Lincoln", "age" => 44}

puts about_me["first_name"]


symbol_hash_example = {a:1, b:2, c:3}
puts symbol_hash_example[:b]

# -- get the keys 
puts symbol_hash_example.keys

# -- get the values
puts symbol_hash_example.values

# -- loop
symbol_hash_example.each do |k, v|
    puts "Key #{k} and value #{v}"
end
# one line
symbol_hash_example.each  {|k, v| puts "Key #{k} and value #{v}" }

# -- add, alter
sample_hash['d'] = 44
sample_hash['a'] = "tim"

print sample_hash

about_me.select {|k, v| puts v.is_a?(String)}

# -- delete - im sure there are other ways
about_me.select {|k, v| about_me.delete(k) if v.is_a?(String)}
puts about_me
