# JRNLY

* *Jrnly* is a command line CRUD application that allows users on a local environment to keep track of their `notes` and `to-do` list, as well as communicate with other users through `posts`. All `notes`, `posts` and `to-dos` are `tagged` by the user. `Tags` are topics that `notes`, `posts` and `to-dos` can share, so the user can look them up according to topic.

* To run *Jrnly*, open this file's directory in your terminal and type ruby bin/run.rb

![](./demo-gifs/01-login.gif)

* As noted above, *Jrnly* stores three types of data:

  - `Notes` are any thoughts the user wants to right down that are private and ought to be preserved. They are wiped from the user's home page each day

![](./demo-gifs/03-create-note.gif)

  - `To-dos` are like notes in that they are private, but they are not wiped from the user's home page until the user marks them complete. Any to-dos that are not marked complete by day-end roll over to the following day.

![](./demo-gifs/02-create-todo.gif)

  - `Posts` are like notes in that they are wiped from the user's home page each day, except that they are public. They're displayed on the user's `community board` with their corresponding authors and `tags`.

![](./demo-gifs/04-create-post.gif)

* A *Jrnly* entry is the sectioned list of all notes and posts for the present day, as well as any to-dos not yet complete.

## More demos

* User interaction occurs primarily through posts phase in development

![](./demo-gifs/05-user-interaction.gif)

* New users can create an account and password

![](./demo-gifs/06-create-user.gif)

* Users can delete their accounts

![](./demo-gifs/07-delete-account.gif)

* Login validations indicate errors in user input during login

![](./demo-gifs/08-login-validations.gif)

* Searching data by date is not yet functional
![](./demo-gifs/09-search-by-date-non-functional.gif)

* Users can search associated data by tag

![](./demo-gifs/10-search-by-tag.gif)

* Users can view their notes separately from `to-dos` and `posts`

![](./demo-gifs/11-search-notes-only.gif)

* Users can view all the tags that they and other users have labeled data with
![](./demo-gifs/12-search-for-tags.gif)

* Users can mark `to-dos` complete, removing them from their `to-do` list
![](./demo-gifs/13-complete-todo.gif)

* Users can view the to-dos that they have completed
![](./demo-gifs/14-search-completed-todos.gif)

### Developed over the course of about five days by Carla Stickler and Joseph Syverson
#### May 2019 (our first app!)

https://github.com/joesyverson/jrnly-cli
