# couple of ways to require a file
#$LOAD_PATH << "." # . is for current dir
#require 'file_name'

require_relative '10_module'


users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
  ]

  hashed_users = CRUD.create_secure_users(users)
  puts hashed_users