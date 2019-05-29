require_relative '../config/environment'

prompt = TTY::Prompt.new

# def display_home(user, prompt)
#     puts "Hello #{user.name}!!! Welcome to you JRNLY!!!"
#     if user.messages == []
#     puts "You have nothing in your JRNLY, why don't you add something! What would you like to add?"

#     message = create_message(user, prompt)
        
#     puts "Here is your new message: #{message.title}"

#     else 
#         user.display_messages
#     end
# end



# def create_message(user, prompt)
#     message_type = prompt.select("Choose your message type", %w(To-Do Note Post))

#     message_title = prompt.ask("Title your new #{message_type}")

#     message_body = prompt.ask("Write your #{message_type}")

#     tag_name = prompt.ask("Give your message a tag so you can search for it later")

#     message_tag = Tag.all.find_or_create_by(name: tag_name)
  

#     message = Message.create(title: message_title, body: message_body, status: message_type, user_id: user.id, tag_id: message_tag.id)
# end

puts "Welcome to JRNLY, your new favorite journal app!"

answer = prompt.yes?('Are you an existing user?')

if answer == true
    username = prompt.ask('What is your username?')
    password = prompt.mask('What is your password?')
    user = User.all.find_by(name: username)
    if user.password == password
        user.display_home(prompt)
      
    end
else 
    username = prompt.ask('Please create a username')
    password = prompt.mask('Please create a password')
    user = User.create(name: username, password: password)
    user.display_home(prompt)
end



puts "HELLO WORLD"
