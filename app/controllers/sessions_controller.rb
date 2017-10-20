get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user && @user.password == params[:password]
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Username and password don't match!"]
    erb :'sessions/new'
  end
end

get '/logout' do
  session[:id] = nil
  redirect '/'
end
