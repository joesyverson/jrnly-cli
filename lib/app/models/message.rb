class Message < ActiveRecord::Base

  belongs_to :user
  belongs_to :tag

  def self.all_posts
    self.where(status: "Post")
  end

  def self.todays_posts
    self.all_posts.select {|message| message.created_at.today?}
  end

  

  def self.put_posts(posts)
      puts ""
    puts "---COMMUNITY BOARD POSTS---"
    puts "==========================="
    if posts.length == 0
      puts "* no one from your community has posted today *"
      puts "* select 'Create' below to add a new post *"
    else
      counter = 0
      posts.reverse.map do |message|
        author = User.find_by(id: message.user_id).name
        puts "#{counter += 1}: #{message.title} -- #{message.body} (By: #{author}) *#{Tag.find_by(id: message.tag_id).name}*" 
      end
    end
    sleep(2)
  end

end
