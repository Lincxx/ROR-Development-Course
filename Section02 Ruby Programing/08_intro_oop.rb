class Student
    # Attributes, setters and getters
    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(first_name, last_name, email, username, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
    end

    # instance variable
   

    def to_s
        "First name: #{@first_name}"
    end
end


jeremy = Student.new("Jeremy", "Lincoln", "n@n.com", "lincxx", "12234")


puts jeremy.first_name
puts jeremy.last_name
puts jeremy.email
puts jeremy.username
puts jeremy.password

class Course
    
end