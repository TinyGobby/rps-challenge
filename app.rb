require 'sinatra/base'

class Rps < Sinatra::Application
  get '/' do 
    erb(:index)
  end

  post '/name' do
    $name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# the marketeer should be able to enter their name before the game
# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option
# the game will choose a random option  
# a winner will be declared