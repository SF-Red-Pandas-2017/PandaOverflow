get '/questions/:question_id/comments' do
  @question = Question.find(params[:question_id])
  @comments = @question.comments
  if @comments.empty?
    @errors = ["There are no comments for this question."]
    erb :"questions/show"
  else
    erb :'comments/index'
  end
end

get '/answers/:answer_id/comments' do
  @answer = Answer.find(params[:answer_id])
  @question = @answer.question
  @comments = @answer.comments
  if @comments.empty?
    @errors = ["There are no comments for this answer."]
    erb :"questions/show"
  else
    erb :'comments/index'
  end
end


