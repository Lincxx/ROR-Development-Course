module CRUD
require 'bcrypt'

    puts "Module CRUD activated"

    def self.create_hash_digest(password)
        BCrypt::Password.create(password)
    end


    def self.verify_hash_digest(password)
        BCrypt::Password.new("$2a$12$fX4nQWPOGrwVPC8LVPUgueTzpsdkxVIVp.RkPJl.Wz9ic5qReWY7i")
    end

    def self.create_secure_users(list_of_users)
        list_of_users.each do |user_record|
        #    x = create_hash_digest(user_record[:password])
        #    puts x
        user_record[:password] = create_hash_digest(user_record[:password])
        end
        list_of_users
    end

    def self.authenticate_user(username, password, list_of_users)
        list_of_users.each do |user_record|
            if user_record[:username] == username && verify_hash_digest(user_record[:password] == password)
                return user_record
            end
        end
        "Credentials were not correct"
    end

end

