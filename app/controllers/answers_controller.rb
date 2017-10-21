get '/questions/:question_id/answers/new' do
  @question = Question.find(params[:question_id])
  if request.xhr?
    erb :'answers/new', layout: false
  else
    erb :'answers/new'
  end
end

post '/questions/:question_id/answers' do
  if logged_in?
    current_user.answers << Answer.new(answer_body: params[:answer_body], question_id: params[:question_id])
    redirect "/questions/#{current_user.answers.last.question.id}"
  else
    @errors = ["You need to be logged in to post an answer."]
    erb :'sessions/new'
  end
end
