post '/questions/:question_id/votes' do
  if logged_in?
    @question = Question.find(params[:question_id])
    @question.votes << Vote.new(vote_value: params[:vote_input].to_i, judge_id: current_user)
    redirect "/questions/#{@question.id}"
  else
    redirect 'sessions/new'
  end
end

post '/answers/:answer_id/votes' do
  if logged_in?
    @answer = Answer.find(params[:answer_id])
    @answer.votes << Vote.new(vote_value: params[:vote_input].to_i, judge_id: current_user)
    redirect "/questions/#{@answer.question.id}"
  else
    redirect 'sessions/new'
  end
end

post '/comments/:comment_id/votes' do
  if logged_in?
    @comment = Comment.find(params[:comment_id])
    @comment.votes << Vote.new(vote_value: params[:vote_input].to_i, judge_id: current_user)
    redirect "/#{@comment.commentable_type.downcase}s/#{@comment.commentable.id}/comments"
  else
    redirect 'sessions/new'
  end
end


