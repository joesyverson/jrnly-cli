class User < ActiveRecord::Base

  has_many :messages
  has_many :tags, through: :messages

  def display_messages
    to_do_arr = []
    note_arr = []
    self.messages.each do |message|
        if message.status == "To Do"
            to_do_arr << message
        elsif message.status == "Note"
            note_arr << message
        end
    end
    post_arr = Message.all.select do |message|
        message.status == "Post"
    end
    puts ""
    puts "Here's whatcha got"
    sleep(2)
    puts ""
    puts "---TO DOS---"
    puts "------------"
    to_do_arr.each do |message|
        puts "#{message.title} -- #{message.body}"
    end
    puts ""
    puts "---NOTES---"
    puts "-----------"
    note_arr.each do |message|
        puts "#{message.title} -- #{message.body}"
    end
    puts ""
    puts "---POSTS---"
    puts "-----------"
    post_arr.map do |message|
        author = User.find_by(id: message.user_id).name
        # binding.pry
        puts "#{message.title} -- #{message.body} (#{author})"
    end
    puts ""
    puts ""
  end

  def display_home(prompt)
    puts "Hello #{self.name}!!! Welcome to your JRNLY!!!"
    if self.messages == []
      puts "You have nothing in your JRNLY, why don't you add something! What would you like to add?"

      message = create_message(prompt)
        
      puts "Here is your new message: #{message.title}: #{message.body}"
    
      self.display_home(prompt)

    else 
      self.display_messages
    end
    sleep(2)
  end



  def create_message(prompt)
    message_type = prompt.select("Choose your message type", %w(To-Do Note Post))

    message_title = prompt.ask("Title your new #{message_type}")

    message_body = prompt.ask("Write your #{message_type}")

    tag_name = prompt.ask("Give your message a tag so you can search for it later")

    message_tag = Tag.all.find_or_create_by(name: tag_name)


    message = Message.create(title: message_title, body: message_body, status: message_type, user_id: self.id, tag_id: message_tag.id)
  end


end
  
