describe Game do
  let(:player) { double(:player, name: 'Patrick') }
  let(:game) { Game.instance }

  describe '#create_player' do
    it 'responds to create_player' do
      expect(game).to respond_to(:create_player).with(1).argument
    end
  end

  describe '#player' do
    it 'returns player instance' do
      game.create_player('Patrick')
      expect(game.player).to be_an_instance_of(Player)
    end
  end

  describe '#computer_choice' do
    xit 'returns one of "Rock", "Paper" or "Scissors"' do
    # expect(game).to receive(:computer_choice).and_return('Rock')
      expect(game.computer_choice).to eq "Rock"
    end
  end

  describe '#outcome' do
    it 'returns player winner' do
      expect(game.outcome('Rock', 'Scissors')).to eq 'Patrick wins!'
    end
    it 'returns computer winner' do
      expect(game.outcome('Scissors', 'Rock')).to eq 'Computer wins!'
    end
    it 'returns draw' do
      expect(game.outcome('Rock', 'Rock')).to eq "It's a draw!"
    end
  end
end
