get '/users/new' do
  @user = User.new
  erb :'index'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'index'
  end
end

get '/users/:id'  do
  @user = User.find(params[:id])
  if current_user == @user
    erb :'users/show'
  else
    erb :'index'
  end
end
