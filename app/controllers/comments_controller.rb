get '/questions/:question_id/comments' do
  @question = Question.find(params[:question_id])
  p "*" * 50
  p @question
  p @comments = @question.comments.to_ary
  erb :'comments/index'
end

