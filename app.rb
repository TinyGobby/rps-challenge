require 'sinatra/base'
require_relative "./lib/player.rb"

class Rps < Sinatra::Application

  before do
    @player = Player.instance
  end
  
  get '/' do 
    erb(:index)
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @player.choice = params[:choice]
    redirect '/confirmation'
  end

  get '/confirmation' do
    # TODO: Add opponent return and declare winner
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
