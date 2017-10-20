User.destroy_all
Question.destroy_all
Answer.destroy_all

10.times {User.create({username: Faker::Name.first_name, password: 'xxx'})}


# User has many questions
User.all.each do |user|
  user.questions << Question.new({title: "What's up?", question_body: "What is up?"})
  user.questions.first.answers << Answer.new({answer_body: "Not much"})
end

Question.all.each do |question|
  question.comments << Comment.new({comment_body: "Good question!"})
end






