Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

chris = User.create(username: "Chris", password: "123")
lorenzo = User.create(username: "Lorenzo", password: "123")
frankie = User.create(username: "Frankie", password: "123")

post1 = Post.create(title: "Amazon Game Studios reportedly lays off dozens in shake-up", category: "Technology", content: "Amazon Game Studios has quietly laid off dozens of employees on the last day of E3, one of the biggest video game conferences in the world, according to Kotaku. The company reportedly told affected employees that they only have 60 days to find new positions within Amazon. If they fail to do so within the allotted period, they'll have to leave the company with (thankfully) a severance package in tow. In addition, the studio has also cancelled some of the games it has yet to announce.

While it sounds like the studio is in trouble, it's not shutting its doors altogether. Those waiting for New World and Crucible don't have to worry: Amazon told Kotaku that they're still in development. In fact, while the spokesperson didn't reveal how many employees were let go, they confirmed the news and told the publication that the layoffs were part of a reorganization to prioritize the development of those two titles, as well as of new unannounced projects.", user_id: chris.id)

post2 = Post.create(title: "Twitter is bringing back its Mac desktop app", category: "Technology", content: "A little over a year after discontinuing its Mac desktop app, Twitter says that it’s bringing the program back after Apple unveiled Project Catalyst for macOS 10.15 Catalina. It explained why it decided to drop the app last year.

Twitter made the announcement during Apple’s WWDC conference last week, saying that the app would launch with Catalina this fall, and that this new version will have a variety of features like dark mode, keyboard shortcuts, multiple windows, and notifications.

In February 2018, Twitter pulled the application from Apple’s App Store after a history of sporadic updates, and recommended that people simply use the web version. In its post yesterday, it also provides a bit more of an explanation for why the original Mac app was discontinued: while it originated with the iPhone app, the Mac app “diverged as Twitter increasingly focused on its mobile apps,” and the company simply couldn’t maintain the two.", user_id: chris.id)

post3 = Post.create(title: "PS5 Vs Xbox Scarlett Comparison – What We Know So Far", category: "Technology", content: "PS5 Vs Xbox Scarlett – which one is better? Well, though it’s a touch too early to definitively tell just yet, we do have some details and specifications that we can use to create a limited comparison between the two next-generation consoles.

After Sony unleashed some of the first details regarding the next-generation PlayStation 5 at the end of April and Microsoft unveiled the first details of its vision for the next-generation Xbox codenamed Project Scarlett at E3 2019, we certainly know more than we did at the beginning of the year.", user_id: lorenzo.id)

post4 = Post.create(title: "New Nintendo Switch Models Now In Production", category: "Technology", content: "We know from previous reports that two new Nintendo Switch models could be on the way, possibly as soon as this year. Officially, Nintendo has not addressed the possibility, though it did say it would not announce the new systems during E3. That proved to be true, but a new report from The Wall Street Journal published this week, during E3 2019, reveals some new details these rumored new Switch models.

Specifically, the report states that Nintendo has decided to move the manufacturing of the new consoles to Southeast Asia instead of China. This is a result of concerns about potential United States tariffs on electronics made in China. As we reported previously, President Trump's proposed import tax rate of 25 percent would impact video game consoles, as well as smartphones and computers. In theory, this could lead to price increases on game consoles--from Nintendo, as well as Microsoft and Sony--as companies pass on the cost to consumers.

The alternative would be to absorb the cost themselves, which is obviously not a welcome concept for companies. Game consoles are not historically where the money is made in the games business. Oftentimes, systems are sold at a loss or with very thin margins, with profits instead coming from software and services. Those margins do improve over time, but a 25% tariff would nonetheless be unwelcome.", user_id: frankie.id)

Like.create(user_id: chris.id, post_id: post1.id)
Like.create(user_id: lorenzo.id, post_id: post1.id)
Like.create(user_id: frankie.id, post_id: post2.id)
Like.create(user_id: chris.id, post_id: post1.id)
Like.create(user_id: chris.id, post_id: post2.id)
Like.create(user_id: lorenzo.id, post_id: post1.id)
Like.create(user_id: frankie.id, post_id: post3.id)
Like.create(user_id: chris.id, post_id: post4.id)
Like.create(user_id: chris.id, post_id: post2.id)
Like.create(user_id: lorenzo.id, post_id: post1.id)

Comment.create(content: "this sucks", post_id: post1.id, user_id: lorenzo.id)
Comment.create(content: "this is okay", post_id: post1.id, user_id: lorenzo.id)
Comment.create(content: "this is a longer comment", post_id: post1.id, user_id: frankie.id)
Comment.create(content: "this is cool this is a longer comment", post_id: post2.id, user_id: lorenzo.id)
Comment.create(content: "this is a comment", post_id: post3.id, user_id: frankie.id)
