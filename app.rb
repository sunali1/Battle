require 'sinatra/base'
require "./lib/player"
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
  erb(:index)
  end

  post '/names' do
  player_1 = Player.new(params[:player_1_name])
  player_2 = Player.new(params[:player_2_name])
  p player_1 #in names
  p player_2
  $game = Game.new(player_1, player_2)
  redirect '/play'
end

  get'/play' do
    @game = $game
    erb(:play)
  end

  get'/attack' do
    @game = $game
    @game.attack(@game.player_2)
    @game.switch_turns
    erb(:attack)
    end

run! if app_file == $0 #ASK ED WHY DIDNT RUN WHEN WAS BEFORE '/'
end
