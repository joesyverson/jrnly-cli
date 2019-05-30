class Message < ActiveRecord::Base

  belongs_to :user
  belongs_to :tag

  def self.all_posts
    self.all.select do |message|
        message.status == "Post"
    end
  end

  def self.todays_posts
    self.all_posts.select {|message| message.created_at.today?}
  end

  

  def self.put_posts(posts)
      puts ""
    puts "---COMMUNITY BOARD POSTS---"
    puts "==========================="
    counter = 0
    posts.map do |message|
        author = User.find_by(id: message.user_id).name
        puts "#{counter += 1}: #{message.title} -- #{message.body} (#{author})"
    end
  end

end
