Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

chris = User.create(username: "Chris", password: "123")
lorenzo = User.create(username: "Lorenzo", password: "123")
frankie = User.create(username: "Frankie", password: "123")

post1 = Post.create(title: "Hello", content: "First post", user_id: chris.id)
post2 = Post.create(title: "There", content: "Second post", user_id: chris.id)
post3 = Post.create(title: "Stuff", content: "Third post", user_id: chris.id)
post4 = Post.create(title: "More Stuff", content: "Fourth post", user_id: chris.id)

like1 = Like.create(user_id: chris.id, post_id: post1.id)
like2 = Like.create(user_id: lorenzo.id, post_id: post1.id)
like3 = Like.create(user_id: frankie.id, post_id: post2.id)
like4 = Like.create(user_id: chris.id, post_id: post1.id)
like5 = Like.create(user_id: chris.id, post_id: post2.id)
like6 = Like.create(user_id: lorenzo.id, post_id: post1.id)
like7 = Like.create(user_id: frankie.id, post_id: post3.id)
like8 = Like.create(user_id: chris.id, post_id: post4.id)
like9 = Like.create(user_id: chris.id, post_id: post2.id)
like10 = Like.create(user_id: lorenzo.id, post_id: post1.id)

comment1 = Comment.create(content: "this sucks", post_id: post1.id, user_id: lorenzo.id)
comment4 = Comment.create(content: "this is okay", post_id: post1.id, user_id: lorenzo.id)
comment5 = Comment.create(content: "this is a longer comment", post_id: post1.id, user_id: frankie.id)
comment2 = Comment.create(content: "this is cool", post_id: post2.id, user_id: lorenzo.id)
comment3 = Comment.create(content: "this is a comment", post_id: post3.id, user_id: frankie.id)
