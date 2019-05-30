TODOHASHES = []

def display_home(user, prompt)
    puts ""
    puts ""
    puts "Hello #{user.name}!!! Here's your JRNLY for today!"
    puts ""
    puts "#{Time.now.month}/#{Time.now.day}/#{Time.now.year}"
    sleep(1)
    user.put_to_dos(user.incompleted_todos)
    user.put_notes(user.todays_notes)
    Message.put_posts(Message.todays_posts)
    puts ""
    puts ""
    main_menu(user, prompt)
    
end

def new_user(user, prompt)
    puts ""
    puts ""
    puts "Hello #{user.name}!!! Welcome to your new JRNLY!"
    puts ""
    puts "You have nothing in your JRNLY, why don't you add something!"
    create_message(user, prompt)
end

def main_menu(user, prompt)
    answer = prompt.select("Navigation Menu", %w(Search Create Complete_To_Do Home_Page Delete_Account Sign_Out))
        case answer
        when "Search"
            search_page(user, prompt)
        when "Create"
            create_message(user, prompt)
        when "Complete_To_Do"
            answer = prompt.ask("Please enter the number of the to-do you'd like to mark as complete, or type 'exit' to back")
            if answer == 'exit'
                search_page(user, prompt)
            else
                body = TODOHASHES[-1][answer.to_i]
                completed = Message.find_by(body: body)
                completed.update(completed: true)
                user.reload
                main_menu(user, prompt)
            end
        when "Home_Page"
            display_home(user, prompt)
        when "Delete_Account"
            answer = prompt.yes?('Are you you sure you want to delete your account?')
                if answer == true  
                    puts "Good Bye!"
                    user.destroy
                elsif answer == false
                    main_menu(user, prompt)
                end
        when "Sign_Out"
            exit
        end
end

def create_message(user, prompt)
    message_type = prompt.select("Choose your message type", %w(To-Do Note Post Back))
    if message_type == "Back"
        main_menu(user, prompt)
    else
        message_title = prompt.ask("Title your new #{message_type}")
        message_body = prompt.ask("Write your #{message_type}")
        tag_name = prompt.ask("Give your message a tag so you can search for it later")
        message_tag = Tag.all.find_or_create_by(name: tag_name)
        message = Message.create(title: message_title, body: message_body, completed: false, status: message_type, user_id: user.id, tag_id: message_tag.id)
    end
    sleep(2)

    user.reload
    display_home(user, prompt)

end

def search_page(user, prompt)
    puts ""
    puts ""

    answer = prompt.select("What would you like find?", %w(Journal_Page_By_Date Community_Board_Posts_By_Tag My_Notes My_Completed_To_Dos View_All_Tags Home_Page Log_Out))
        case answer
        when "Journal_Page_By_Date"
            puts "This Page Is Under Construction"
            sleep(2)
            search_page(user, prompt)
        when "Community_Board_Posts_By_Tag"
            tagname = prompt.ask("What tag would you like to search by?")
            tag = Tag.find_by(name: tagname)
            tag.posts_by_tag_name
            sleep(2)
            search_page(user, prompt)
        when "My_Notes"
            user.put_notes(user.all_notes)
            sleep(2)
            search_page(user, prompt)
        when "My_Completed_To_Dos"
            user.put_to_dos(user.completed_todos)
            sleep(2)
            search_page(user, prompt)
        when "View_All_Tags"
            Tag.tag_names
            sleep(2)
            search_page(user, prompt)
        when "Home_Page"
            display_home(user, prompt)
        when "Log_Out"
            exit
        end
end
