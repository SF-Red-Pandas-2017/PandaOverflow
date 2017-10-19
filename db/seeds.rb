10.times {User.create({username: Faker::Name.first_name, password: 'xxx'})}


# User has many questions
User.all.each do |user|
  user.questions << Question.new({title: "What's up?", question_body: "What is up?"})
end






