require 'bcrypt'

# my_password = BCrypt::Password.create("my password")
#=> "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"
# puts my_password

# $2a$12$fX4nQWPOGrwVPC8LVPUgueTzpsdkxVIVp.RkPJl.Wz9ic5qReWY7i
# puts my_password = BCrypt::Password.new("$2a$12$fX4nQWPOGrwVPC8LVPUgueTzpsdkxVIVp.RkPJl.Wz9ic5qReWY7i")
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false


users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
  ]

def create_hash_digest(password)
    BCrypt::Password.create(password)
end


def verify_hash_digest(password)
    BCrypt::Password.new("$2a$12$fX4nQWPOGrwVPC8LVPUgueTzpsdkxVIVp.RkPJl.Wz9ic5qReWY7i")
end

def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
    #    x = create_hash_digest(user_record[:password])
    #    puts x
    user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
end

new_users = create_secure_users(users)
puts new_users

def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && verify_hash_digest(user_record[:password] == password)
            return user_record
        end
    end
    "Credentials were not correct"
end


puts authenticate_user("jack", "password2", new_users)
