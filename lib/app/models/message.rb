class Message < ActiveRecord::Base

  belongs_to :user
  belongs_to :tag

  def self.all_posts
    self.all.select do |message|
        message.status == "Post"
    end
  end

  def self.put_all_posts
      puts ""
    puts "---POSTS---"
    puts "-----------"
    self.all_posts.map do |message|
        author = User.find_by(id: message.user_id).name
        # binding.pry
        puts "#{message.title} -- #{message.body} (#{author})"
    end
  end

end
