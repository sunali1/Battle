require 'sinatra/base'
require "./lib/player"

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
  erb(:index)
  end

  post '/names' do
  p params
  $player_1 = Player.new(params[:player_1_name])
  $player_2 = Player.new(params[:player_2_name])
  p $player_1 #in names
  p $player_2
  redirect '/play'
end

  get'/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  get'/attack' do
    @player_1= $player_1
    @player_2 = $player_2
    Game.new.attack(@player_2)
    erb(:attack)
    end

run! if app_file == $0 #ASK ED WHY DIDNT RUN WHEN WAS BEFORE '/'
end
