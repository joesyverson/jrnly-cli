

user1 = User.create(name: "carla", password: "hello")
user2 = User.create(name: "joe", password: "hello")
user3 = User.create(name: "mark", password: "hello")

tag1 = Tag.create(name: "groceries")
tag2 = Tag.create(name: "chores")
tag3 = Tag.create(name: "work")

mes1 = Message.create(title: "title1", body: "the body", status: "Note", user_id: 1, tag_id: 2)
mes1 = Message.create(title: "work!", body: "DO WORK", status: "To Do", user_id: 1, tag_id: 3)
mes1 = Message.create(title: "CLEAN", body: "clean up", status: "To Do", user_id: 1, tag_id: 2)
mes1 = Message.create(title: "posting", body: "testing post", status: "Post", user_id: 1, tag_id: 3)
mes1 = Message.create(title: "post test", body: "testing from another user", status: "Post", user_id: 2, tag_id: 3)
