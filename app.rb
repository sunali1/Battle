require 'sinatra/base'
require 'player'
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
  erb(:index)
  end

  post '/names' do
  p params
  $player_1 = Player.new(params[:name1])
  $player_2 = Player.new(params[:name2])
  redirect to('/play')
end

  get'/play' do
    @name1 = $player_1.name
    @name2 = $player_2.name
    erb(:play)
  end

  get'/attack' do
    @name1 = $player_1.name
    @name2 = $player_2.name
    erb(:attack)
  end
run! if app_file == $0 #ASK ED WHY DIDNT RUN WHEN WAS BEFORE '/'
end
