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

end
  
