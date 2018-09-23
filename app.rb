require 'sinatra/base'
require_relative "./lib/game.rb"

class Rps < Sinatra::Application

  before do
    @game = Game.instance
  end
  
  get '/' do 
    erb(:index)
  end

  post '/name' do
    @game.create_player(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player.choice = params[:choice]
    redirect '/confirmation'
  end

  get '/confirmation' do
    erb(:confirmation)
  end

  run! if app_file == $0
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online player

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# the marketeer should be able to enter their name before the player
# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option
# the player will choose a random option  
# a winner will be declared
