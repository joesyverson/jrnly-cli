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
      puts "* click 'Create' below to add a new to-do *"
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
      puts "* click 'Create' below to add a new note *"
    else
      counter = 0
      notes.map do |message|
        puts "#{counter += 1}: #{message.title} -- #{message.body}"
      end
    end
    sleep(1)
  end

end
