post '/questions/:question_id/votes' do
 @question = Question.find(params[:question_id])
  if logged_in?
    @question.votes << Vote.new(vote_value: params[:vote_input].to_i, judge_id: current_user)
    if request.xhr?
      @question.object_votes.to_s
    else
      redirect "/questions/#{@question.id}"
    end
  else
    if request.xhr?
      "#{@question.object_votes}     *Please log-in to vote"
    else
      redirect 'sessions/new'
    end
  end
end

post '/answers/:answer_id/votes' do
  @answer = Answer.find(params[:answer_id])
  if logged_in?
    @answer.votes << Vote.new(vote_value: params[:vote_input].to_i, judge_id: current_user)
    if request.xhr?
      @answer.object_votes.to_s
    else
    redirect "/questions/#{@answer.question.id}"
    end
  else
    if request.xhr?
      "#{@answer.object_votes}     *Please log-in to vote"
    else
      redirect 'sessions/new'
    end
  end
end

post '/comments/:comment_id/votes' do
  @comment = Comment.find(params[:comment_id])
  if logged_in?
    @comment.votes << Vote.new(vote_value: params[:vote_input].to_i, judge_id: current_user)
    if request.xhr?
      @comment.object_votes.to_s
    else
    redirect "/#{@comment.commentable_type.downcase}s/#{@comment.commentable.id}/comments"
    end
  else
    if request.xhr?
      "#{@comment.object_votes}     *Please log-in to vote"
    else
      redirect 'sessions/new'
    end
  end
end


