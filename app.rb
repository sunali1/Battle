require 'sinatra/base'

class Battle < Sinatra::Application
  enable :sessions

  get '/' do
  #"Testing infrastructure working"
  erb(:index)
  end

  post '/names' do
  p params
  session[:name1] = params[:name1]
  session[:name2] = params[:name2]
  redirect to('/play')
end

  get'/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    @hitpoint1 = 100
    @hitpoint2 = 200
  erb(:play)
  end
run! if app_file == $0 #ASK ED WHY DIDNT RUN WHEN WAS BEFORE '/'
end
