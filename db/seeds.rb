User.destroy_all
Question.destroy_all
Answer.destroy_all

10.times {User.create!({username: Faker::Name.first_name, password: 'xxx'})}

user1 = User.first
user2 = User.second
user3 = User.third
user4 = User.fourth


question1 = user1.questions.create!({title: "Red Panda and Environment", question_body: "How does the red panda help the environment?"})
question2 = user2.questions.create!({title: "Red Panda Diet", question_body: "What do red pandas eat?"})
question3 = user3.questions.create!({title: "Red Panda Danger", question_body: "Are red pandas dangerous to humans?"})
question4 = user4.questions.create!({title: "Red Panda Reproduction", question_body: "how does the red panda reproduce?"})
question5 = user1.questions.create!({title: "Red Panda Family", question_body: "Which animals are related to the red pandas?"})


answer1 = user2.answers.create!({question_id: question1.id, answer_body: "The Red Panda is the only species of its kind in the world... These Pandas eat bamboo, insects, eggs, fruit, leaves and plants. Red Pandas control the growth and population of these animals and species. Red Pandas play an important role in the ecosystem and it would be a great loss if they became extinct."})
answer2 = user1.answers.create!({question_id: question2.id, answer_body: "Food. The red panda's diet is very unusual for a mammal and consists mostly of bamboo. When the weather is warm enough, they also eat insects and fruit. Although the giant panda eats almost every part of the bamboo plant (except the roots), the red panda only eats the youngest, most tender shoots and leaves."})
answer3 = user3.answers.create!({question_id: question2.id, answer_body: "Correct me if I am wrong, but I am pretty sure red pandas love love love pizza! Especially, the pepperoni kind! They also love to snack on whatever sugary treats Jameson brings in for the day."})
answer4 = user4.answers.create!({question_id: question3.id, answer_body: "The Red Panda's 'cuteness' is simply a reflection of the human tendency to anthropomorphize animals. In reality, the Red Panda is a vicious omnivore, willing to eat (or try to eat) anything it can put into its mouth... In short, stay clear of Red Pandas in the wild, and do not provoke the creatures in captivity."})
answer5 = user1.answers.create!({question_id: question4.id, answer_body: "Breeding season is in the late fall through winter. The gestation period is about four months. Baby red pandas are born in an average litter size of one to four babies and are born in the late spring and summer. They build a nest or use hollow tree trunks or small caves to give birth to their newborn."})
answer6 = user4.answers.create!({question_id: question2.id, answer_body: "It might seem like an oxymoron, but carnivore in this case doesn’t mean meat eater. Carnivore is a biological order that includes groups like bears, dogs, and cats, and while these animals are generally carnivores, some are omnivores, and some are vegetarians. Red pandas are classified as carnivores because they’re descended from the same ancestors as the other carnivores, but they rarely eat anything other than bamboo and a few insects. And while giant pandas eat all of a bamboo plant, red pandas eat only the young leaves. Because this is such a nutritionally poor food source, they need to spend 13 hours a day eating and looking for food and can lose upwards of 15 percent of their body weight in winter."})
answer7 = user2.answers.create!({question_id: question5.id, answer_body: "They have two extinct relatives."})
answer8 = user3.answers.create!({question_id: question5.id, answer_body: "Currently, red pandas live in the Eastern Himalayas. But the first red panda fossil was found a little bit further afield than that—in the United Kingdom. In 1888, a fossil molar and lower jaw of a cougar-sized animal called the Giant Panda (unrelated to the modern giant panda) were discovered. More fossils have been found in Spain, Eastern Europe, and even the United States. Around 5 million years ago, Tennessee was home to a giant red panda that probably went extinct with the arrival of raccoons."})


question1.comments.create!({comment_body: "Good question!"})
question2.comments.create!({comment_body: "Good question!"})
question3.comments.create!({comment_body: "Good question!"})
answer1.comments.create!({comment_body: "Wow! This is great! Thank you so much. I learned a new fact about red pandas"})
answer3.comments.create!({comment_body: "Wow! This is so helpful! I did not know red pandas love to eat Jameson's snacks!"})
