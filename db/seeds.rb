Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

chris = User.create(username: "Chris", password: "123")
lorenzo = User.create(username: "Lorenzo", password: "123")
frankie = User.create(username: "Frankie", password: "123")
brenden = User.create(username: "Brenden", password: "123")
rei = User.create(username: "Rei", password: "123")
mallory = User.create(username: "Mallory", password: "123")
luka = User.create(username: "Luka", password: "123")
pete = User.create(username: "Pete", password: "123")
ernie = User.create(username: "Ernie", password: "123")
andrew = User.create(username: "Andrew", password: "123")
ben = User.create(username: "Ben", password: "123")
adam = User.create(username: "Adam", password: "123")

chris.followers << lorenzo
chris.followers << frankie
chris.followers << brenden
chris.followers << rei
chris.followers << pete
chris.followers << luka

lorenzo.followers << pete
lorenzo.followers << chris
lorenzo.followers << frankie
frankie.followers << brenden
frankie.followers << rei
frankie.followers << pete
pete.followers << frankie
mallory.followers << pete
luka.followers << pete


post1 = Post.create(title: "Amazon Game Studios reportedly lays off dozens in shake-up", category: "Technology", content: "Amazon Game Studios has quietly laid off dozens of employees on the last day of E3, one of the biggest video game conferences in the world, according to Kotaku. The company reportedly told affected employees that they only have 60 days to find new positions within Amazon. If they fail to do so within the allotted period, they'll have to leave the company with (thankfully) a severance package in tow. In addition, the studio has also cancelled some of the games it has yet to announce. While it sounds like the studio is in trouble, it's not shutting its doors altogether. Those waiting for New World and Crucible don't have to worry: Amazon told Kotaku that they're still in development. In fact, while the spokesperson didn't reveal how many employees were let go, they confirmed the news and told the publication that the layoffs were part of a reorganization to prioritize the development of those two titles, as well as of new unannounced projects.", user_id: chris.id)

post2 = Post.create(title: "Twitter is bringing back its Mac desktop app", category: "Technology", content: "A little over a year after discontinuing its Mac desktop app, Twitter says that it’s bringing the program back after Apple unveiled Project Catalyst for macOS 10.15 Catalina. It explained why it decided to drop the app last year. Twitter made the announcement during Apple’s WWDC conference last week, saying that the app would launch with Catalina this fall, and that this new version will have a variety of features like dark mode, keyboard shortcuts, multiple windows, and notifications. In February 2018, Twitter pulled the application from Apple’s App Store after a history of sporadic updates, and recommended that people simply use the web version. In its post yesterday, it also provides a bit more of an explanation for why the original Mac app was discontinued: while it originated with the iPhone app, the Mac app “diverged as Twitter increasingly focused on its mobile apps,” and the company simply couldn’t maintain the two.", user_id: chris.id)

post3 = Post.create(title: "PS5 Vs Xbox Scarlett Comparison – What We Know So Far", category: "Technology", content: "PS5 Vs Xbox Scarlett – which one is better? Well, though it’s a touch too early to definitively tell just yet, we do have some details and specifications that we can use to create a limited comparison between the two next-generation consoles. After Sony unleashed some of the first details regarding the next-generation PlayStation 5 at the end of April and Microsoft unveiled the first details of its vision for the next-generation Xbox codenamed Project Scarlett at E3 2019, we certainly know more than we did at the beginning of the year.", user_id: lorenzo.id)

post4 = Post.create(title: "New Nintendo Switch Models Now In Production", category: "Technology", content: "We know from previous reports that two new Nintendo Switch models could be on the way, possibly as soon as this year. Officially, Nintendo has not addressed the possibility, though it did say it would not announce the new systems during E3. That proved to be true, but a new report from The Wall Street Journal published this week, during E3 2019, reveals some new details these rumored new Switch models. Specifically, the report states that Nintendo has decided to move the manufacturing of the new consoles to Southeast Asia instead of China. This is a result of concerns about potential United States tariffs on electronics made in China. As we reported previously, President Trump's proposed import tax rate of 25 percent would impact video game consoles, as well as smartphones and computers. In theory, this could lead to price increases on game consoles--from Nintendo, as well as Microsoft and Sony--as companies pass on the cost to consumers. The alternative would be to absorb the cost themselves, which is obviously not a welcome concept for companies. Game consoles are not historically where the money is made in the games business. Oftentimes, systems are sold at a loss or with very thin margins, with profits instead coming from software and services. Those margins do improve over time, but a 25% tariff would nonetheless be unwelcome.", user_id: frankie.id)

post5 = Post.create(title: "Alexa, Monitor My Heart", category: "Technology", content: "People experiencing cardiac arrest will suddenly become unresponsive and either stop breathing or gasp for air, a sign known as agonal breathing. Immediate CPR can double or triple someone's chance of survival, but that requires a bystander to be present. Cardiac arrests often occur outside of the hospital and in the privacy of someone's home. Recent research suggests that one of the most common locations for an out-of-hospital cardiac arrest is in a patient's bedroom, where no one is likely around or awake to respond and provide care.", user_id: frankie.id)

post6 = Post.create(title: "Robot Dogs Take Over City of Sau Paulo", category: "Technology", content: "Robot dogs have overrun the city of Sau Paulo, Brazil in the past few days. Nobody is sure how this has happened, or what is going to happen next. We hope for the best and will return to normal on Monday.", user_id: pete.id)

post7 = Post.create(title: "Kano unveils its first build-it-yourself Windows 10 computer", category: "Technology", content: "The Kano PC will have plenty of ports, too, including HDMI, two USB ports -- one 2.0, the other 3.0 -- and, thankfully, a 3.5mm headphone jack. It will also come with a keyboard cover which, at first blush, looks like a massive improvement over the plastic keyboard that shipped with previous Kano computers. When all of the pieces come together, the Kano PC looks like a kid-proof Surface Go. That, I suspect, was absolutely intentional. You still have to build the computer, which Kano explains through a LEGO-inspired 'storybook.' Some of the parts are replaceable, too, so teachers don't have to buy a whole new system once the battery and speaker finally perish.", user_id: mallory.id)

post8 = Post.create(title: "Brady throws to suspended Gordon in workout", category: "Sports", content: "New England Patriots quarterback Tom Brady posted a GIF on his Instagram account of him throwing to wide receiver Josh Gordon, with a source saying the two connected for a workout together on Tuesday. Gordon had expressed his admiration for Brady during his time with the Patriots in 2018, as his locker was placed right next to Brady's after he was acquired in a mid-September trade. They've kept in contact since. It's good to be able to be in such close proximity to learn from him. I look up to the guy, Gordon said in early December.", user_id: lorenzo.id)
post9 = Post.create(title: "NFL suspends Cowboys' Gathers for one game", category: "Sports", content: "Gathers, a 2016 sixth-round pick, caught three passes for 45 yards last season. He is in a fight to make the 53-man roster this season and spent the offseason working as the fourth tight end behind Jason Witten, Blake Jarwin and Dalton Schultz.", user_id: pete.id)
post10 = Post.create(title: "Hope Hicks questioned behind closed doors on Capitol Hill", category: "News", content: "President Trump’s former communications director Hope Hicks was questioned behind closed doors Wednesday by members of the House Judiciary Committee as part of the panel's review of obstruction allegations and Special Counsel Robert Mueller's report. Less than an hour into the interview, some Democrats said Hicks – who is now the chief communications officer at the Fox Corporation – was following White House orders to stay quiet about her time as an aide to Trump.", user_id: luka.id)


Like.create(user_id: chris.id, post_id: post1.id)
Like.create(user_id: chris.id, post_id: post2.id)
Like.create(user_id: chris.id, post_id: post3.id)
Like.create(user_id: chris.id, post_id: post4.id)
Like.create(user_id: chris.id, post_id: post5.id)
Like.create(user_id: chris.id, post_id: post6.id)
Like.create(user_id: lorenzo.id, post_id: post2.id)
Like.create(user_id: lorenzo.id, post_id: post3.id)
Like.create(user_id: lorenzo.id, post_id: post4.id)
Like.create(user_id: lorenzo.id, post_id: post5.id)
Like.create(user_id: lorenzo.id, post_id: post6.id)
Like.create(user_id: lorenzo.id, post_id: post7.id)
Like.create(user_id: lorenzo.id, post_id: post8.id)
Like.create(user_id: lorenzo.id, post_id: post9.id)
Like.create(user_id: frankie.id, post_id: post9.id)
Like.create(user_id: chris.id, post_id: post1.id)
Like.create(user_id: chris.id, post_id: post2.id)
Like.create(user_id: lorenzo.id, post_id: post1.id)
Like.create(user_id: frankie.id, post_id: post3.id)
Like.create(user_id: chris.id, post_id: post4.id)
Like.create(user_id: chris.id, post_id: post2.id)
Like.create(user_id: lorenzo.id, post_id: post1.id)

Comment.create(content: "I cant believe how cool this is!", post_id: post1.id, user_id: lorenzo.id)
Comment.create(content: "I cant believe how cool this is!", post_id: post2.id, user_id: lorenzo.id)
Comment.create(content: "I cant believe how cool this is!", post_id: post3.id, user_id: lorenzo.id)
Comment.create(content: "I cant believe how cool this is!", post_id: post4.id, user_id: lorenzo.id)
Comment.create(content: "Wow this is awesome! Good luck hahaha", post_id: post5.id, user_id: lorenzo.id)
Comment.create(content: "This project just might be the best thing ever!", post_id: post1.id, user_id: chris.id)
Comment.create(content: "No wayyyyyy!", post_id: post7.id, user_id: chris.id)
Comment.create(content: "I hope this gets me a job in the future...", post_id: post8.id, user_id: chris.id)
Comment.create(content: "I love this stuff!", post_id: post9.id, user_id: chris.id)
Comment.create(content: "Capital Hill is so cool! Im jealous", post_id: post10.id, user_id: chris.id)
Comment.create(content: "this", post_id: post1.id, user_id: frankie.id)
Comment.create(content: "this is wack im tight", post_id: post3.id, user_id: frankie.id)
Comment.create(content: "this is wack im tight", post_id: post4.id, user_id: frankie.id)
Comment.create(content: "this is wack im tight", post_id: post9.id, user_id: frankie.id)
Comment.create(content: "this is wack im tight", post_id: post1.id, user_id: frankie.id)

Comment.create(content: "I heard this guy named rei smells....", post_id: post3.id, user_id: brenden.id)
Comment.create(content: "This is rei, I can confirm", post_id: post3.id, user_id: rei.id)
Comment.create(content: "how did you guys do this???", post_id: post1.id, user_id: mallory.id)
Comment.create(content: "how did you guys do this???", post_id: post2.id, user_id: luka.id)
Comment.create(content: "how did you guys do this???", post_id: post4.id, user_id: andrew.id)
Comment.create(content: "how did you guys do this???", post_id: post6.id, user_id: ben.id)
Comment.create(content: "how did you guys do this???", post_id: post5.id, user_id: adam.id)



















#
