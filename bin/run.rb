require_relative '../config/environment'

prompt = TTY::Prompt.new

puts "Welcome to JRNLY, your new favorite journal app!"

answer = prompt.yes?('Are you an existing user?')

if answer == true
    username = prompt.ask('What is your username?')
    password = prompt.mask('What is your password?')
    user = User.all.find_by(name: username)

else answer == false
    username = prompt.ask('Please create a username')
    password = prompt.mask('Please create a password')
    user = User.create(name: username, password: password)
end

puts "Hello #{user}!!! Welcome to you JRNLY!!!"
puts "Here are your messages"
if user.messages == []
    puts "You have nothing in your JRNLY, why don't you add something! What would you like to add?"
    message_type = prompt.select("Choose your message type", %w(To-Do Note Post))
    binding.pry

else 
    puts user.tags
end
puts ""
puts ""



  # are you a returning user?
    # if yes, sign in
      # request password
    # if no, sign up
      # create username, password
        # would you like to enter your birthday for daily horoscope?
        # zip for weather?
          # create account with hash

# welcome to user account
# output horoscope
# out weather
# output journal
  # initialize empty columns with suggestion to add messages

# provides an option to create a todo, note or post
  # prompt user for tag, provide existing tags, default argument of "general"
# provides an option to modify or destroy existing messages
  #


# provides options to sort messages
  # by tag
    # provide list of avaiable tags
      # allow user to chose tag
        # output all messages with that tag
  # by date
    # ask for input date
      # output messages for date

# exit





# username = gets.chomp

# User.create_or_find_by(name: username)




puts "HELLO WORLD"
