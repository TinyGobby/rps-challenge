require 'singleton'
require_relative 'player'

class Game
  include Singleton

  attr_reader :player

  def initialize
    @winner = { 'Rock' => 'Scissors', 'Scissors' => 'Paper', 'Paper' => 'Rock' }
  end

  def create_player(name)
    @player = Player.new(name)
  end

  def computer_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def outcome(player_choice, computer_choice)
    if @winner[player_choice] == computer_choice
      "#{@player.name} wins!"
    elsif @winner[computer_choice] == player_choice
      'Computer wins!'
    else
      "It's a draw!"
    end
  end
end
