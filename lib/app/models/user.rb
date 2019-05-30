class User < ActiveRecord::Base

  has_many :messages
  has_many :tags, through: :messages

  def all_to_dos
    self.messages.select {|message| message.status == "To-Do"}
  end

  def incompleted_todos
    all_to_dos.select {|todo| todo.completed == false}
  end

  def find_todo_by_body
    
  end

  def update_todo_status(find_todo_by_body)
    todo.update(completed: true)
  end

  def completed_todos 
    self.messages.where(completed: true)
  end

  def todays_notes
    self.all_notes.select {|message| message.created_at.today?}
  end

  def all_notes
    self.messages.select {|message| message.status == "Note"}
  end

  # def all_tags
  #   self.tags.map {|tag| tag.name}
  # end


  # ----- OUT PUT METHODS ------

  def put_to_dos(todos)
    puts ""
    puts "---TO DOS---"
    puts "============"
    if todos.length == 0
      puts "* no to-dos logged today *"
      puts "* click 'Create' below to add a to-do *"
    else
      counter = 0
      to_do_hash = Hash.new
      todos.map do |message|
        puts "#{counter += 1}: #{message.title} -- #{message.body}"
        to_do_hash[counter] = message.body
      end
    end
    sleep(1)
    TODOHASHES << to_do_hash
  end

  def put_notes(notes)
    puts ""
    puts "---NOTES---"
    puts "==========="
    if notes.length == 0
      puts "* you have no notes *"
      puts "* click 'Create' below to add a to-do *"
    else
      counter = 0
      notes.map do |message|
        puts "#{counter += 1}: #{message.title} -- #{message.body}"
      end
    end
    sleep(1)
  end

  # ----- RUN METHODS--------

  # def display_home(prompt)
  #   puts "Hello #{self.name}!!! Here's your JRNLY for today!"
  #   puts ""
  #   puts "Here's whatcha got"
  #   sleep(1)
  #   self.put_to_dos
  #   self.put_notes
  #   Message.put_all_posts
  #   puts ""
  #   puts ""
  #   main_menu(prompt)
  # end

  # def new_user(prompt)
  #   puts ""
  #   puts ""
  #   puts "Hello #{self.name}!!! Welcome to your new JRNLY!"
  #   puts ""
  #   puts "You have nothing in your JRNLY, why don't you add something!"
  #   create_message(prompt)
  # end

  # def main_menu(prompt)

  #   answer = prompt.select("Navigation Menu", %w(Search Create Sign_out))
  #     if answer == "Search"
  #       search_page(prompt)
  #     elsif answer == "Create"
  #       create_message(prompt)
  #     else
  #       # exit
  #     end
  # end

  # def create_message(prompt)
  #   message_type = prompt.select("Choose your message type", %w(To-Do Note Post))
  #   message_title = prompt.ask("Title your new #{message_type}")
  #   message_body = prompt.ask("Write your #{message_type}")
  #   tag_name = prompt.ask("Give your message a tag so you can search for it later")
  #   message_tag = Tag.all.find_or_create_by(name: tag_name)
  #   message = Message.create(title: message_title, body: message_body, status: message_type, user_id: self.id, tag_id: message_tag.id)

  #   sleep(1)

  #   display_home(prompt)

  # end

  # def search_page(prompt)
  #   puts ""
  #   puts ""

  #   answer = prompt.select("What would you like find?", %w(Journal_page_by_date Community_board_posts_by_tag My_notes My_completed_to_dos Home_page))
  #     if answer == "Journal_page_by_date"
  #       # journal page by date
  #     elsif answer == "Community_board_posts_by_tag"
  #       # doens't exist
  #     elsif answer == "My_notes"
  #       self.put_notes
  #       sleep(1)
  #       search_page(prompt)
  #     elsif answer == "My_completed_to_dos"
  #       # doesn't exist
  #     else 
  #       display_home(prompt)
  #     end

  # end



end
