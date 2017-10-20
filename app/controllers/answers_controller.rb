get '/questions/:question_id/answers/new' do
  @question = Question.find(params[:question_id])
  erb :'answers/new'
end

post '/questions/:question_id/answers' do
  current_user.answers << Answer.new(answer_body: params[:answer_body], question_id: params[:question_id])
  p "*?*" * 50
  p current_user.answers.last.question
  redirect "/questions/#{current_user.answers.last.question.id}"
end
