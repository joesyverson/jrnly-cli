class User < ActiveRecord::Base

  has_many :messages
  has_many :tags, through: :messages

  def all_to_dos
    self.messages.select {|message| message.status == "To Do"}
  end

  def all_notes
    self.messages.select {|message| message.status == "Note"}
  end

  # def all_tags
  #   self.tags.map {|tag| tag.name}
  # end

  def put_to_dos
    puts ""
    puts "---TO DOS---"
    puts "------------"
    all_to_dos.each do |message|
        puts "#{message.title} -- #{message.body}"
    end
  end

  def put_notes
    puts ""
    puts "---NOTES---"
    puts "-----------"
    all_notes.each do |message|
        puts "#{message.title} -- #{message.body}"
    end
  end

  def display_messages
    puts ""
    puts "Here's whatcha got"
    sleep(2)
    self.put_to_dos
    self.put_notes
    Message.put_all_posts
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
