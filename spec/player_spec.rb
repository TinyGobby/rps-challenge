describe Player do
  let(:player) { Player.new('Patrick') }

  describe '#name' do
    it 'returns choice that it is initialized with' do
      expect(player.name).to eq 'Patrick'
    end
  end

  describe '#choice' do
    it 'returns player choice passed to it' do
      expect { player.choice = 'Rock' }.to change { player.choice }.to 'Rock'
    end
  end
end
