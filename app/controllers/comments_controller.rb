get '/questions/:question_id/comments' do
  @question = Question.find(params[:question_id])
  erb :'comments/show'
end

