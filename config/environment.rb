require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

ActiveRecord::Base.logger = nil


# def display_home(user)
#     puts "Hello #{user}!!! Welcome to you JRNLY!!!"
#     if user.messages == []
#     puts "You have nothing in your JRNLY, why don't you add something! What would you like to add?"
#     message_type = prompt.select("Choose your message type", %w(To-Do Note Post))
#     binding.pry
#     puts "Let's title your message"
  
#     message_title = prompt.select("Title your new #{message_type}")
#     message = Message.create(title: message_title, status: message_type)

#     else 
#     # 
#     # display_messages
#     end
# end
# puts ""
# puts ""

