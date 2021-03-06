require 'sinatra/base'
require './lib/game'
require './lib/player'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play' 
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
