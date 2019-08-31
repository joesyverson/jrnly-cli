class Tag < ActiveRecord::Base

    has_many :messages, dependent: :destroy
    has_many :users, through: :messages


  def self.tag_names
    self.all.each do |tag| 
      puts tag.name
    end
  end


  def posts_by_tag_name
    puts ""
    puts ""
    puts "--COMMUNITY BOARD POSTS--"
    puts "========================="
    puts ""
    counter = 0
    Message.all_posts.each do |post|
      if post.tag_id == self.id
        puts "#{counter +=1}: #{post.title} -- #{post.body} (#{User.find_by(id: post.user_id).name})"
        puts ""
      end
    end
    puts ""
    puts ""

  end

end

