get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  p "*" * 50
  p @question

  erb :'questions/show'
end

