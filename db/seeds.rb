

user1 = User.create(name: "Carla", password: "hello")
user2 = User.create(name: "Joe", password: "hello")
user3 = User.create(name: "Mark", password: "hello")

tag1 = Tag.create(name: "Groceries")
tag2 = Tag.create(name: "Chores")
tag3 = Tag.create(name: "Work")

mes1 = Message.create(title: "title1", body: "the body", status: "Note", user_id: 1, tag_id: 2)
mes1 = Message.create(title: "work!", body: "DO WORK", status: "To Do", user_id: 1, tag_id: 3)
mes1 = Message.create(title: "CLEAN", body: "clean up", status: "To Do", user_id: 1, tag_id: 2)
mes1 = Message.create(title: "posting", body: "testing post", status: "Post", user_id: 1, tag_id: 3)
mes1 = Message.create(title: "post test", body: "testing from another user", status: "Post", user_id: 2, tag_id: 3)