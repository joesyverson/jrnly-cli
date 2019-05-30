require_relative '../config/environment'
require_relative '../lib/run-methods'

prompt = TTY::Prompt.new

puts "
       _ _____  _   _ _  __     __
      | |  __ \\| \\ | | | \\ \\   / /
      | | |__) | \| | |  |\ \\ _ / / 
  _   | |  _  /| . ` | |   \\   /  
 | |__| | | \\ \\| |\\  | |____| |   
  \\____/|_|  \\_\\_| \\_|______|_|   
                                                             
"
                                     

puts ""
puts "Welcome to JRNLY, your new favorite journal app!"
sleep(1)
puts ""
answer = prompt.yes?('Are you an existing user?')

if answer == true
    username = prompt.ask('What is your username?')
    password = prompt.mask('What is your password?')
    user = User.all.find_by(name: username)
    if user.password == password
        display_home(user, prompt)
    else
        puts "that password was incorrect"
        
    end
else 
    username = prompt.ask('Please create a username')
    password = prompt.mask('Please create a password')
    user = User.create(name: username, password: password)
    new_user(user, prompt)
end



puts "HELLO WORLD"
