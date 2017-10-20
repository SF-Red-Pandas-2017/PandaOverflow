get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do
  current_user.questions << Question.new(params[:question])
  redirect "/users/#{current_user.id}"
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  p "*" * 50
  p @question

  erb :'questions/show'
end

