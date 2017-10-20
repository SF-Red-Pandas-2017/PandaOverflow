get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

get '/questions/new' do
  if request.xhr?
    erb :'questions/new', layout: false
  else
    erb :'questions/new'
  end
end

post '/questions' do
  if logged_in?
    current_user.questions << Question.new(params[:question])
    redirect "/questions"
  else
    @errors = ["You need to be logged in to post a question."]
    erb :'sessions/new'
  end
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  p "*" * 50
  p @question

  erb :'questions/show'
end

