get '/questions/:question_id/comments' do
  @question = Question.find(params[:question_id])
  @comments = @question.comments.to_ary
  erb :'comments/index'
end

get '/answers/:answer_id/comments' do
  @answer = Answer.find(params[:answer_id])
  @comments = @answer.comments.to_ary
  p "*" * 50
  p @comments.first.commentable #.user.username
  erb :'comments/index'
end


