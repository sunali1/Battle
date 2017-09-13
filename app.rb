require 'sinatra/base'

class Battle < Sinatra::Application
get '/' do
  #"Testing infrastructure working"
  erb(:index)
end

post '/names' do
  p params
  @name1 = params[:name1]
  @name2 = params[:name2]
  erb(:play)
end

run! if app_file == $0 #ASK ED WHY DIDNT RUN WHEN WAS BEFORE '/'
end
