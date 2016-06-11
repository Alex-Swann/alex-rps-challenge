require 'rps'

describe RPS do
  subject(:rps) { described_class.new(player1, computer) }

  let(:computer) { double(:computer, name: "SkyNet", player_move: :sp) }
  let(:player1) { double(:player1, name: "Dave", player_move: :r) }

  let(:computer2) { double(:computer2, player_move: :l) }
  let(:player2) { double(:player2, player_move: :l) }

  describe '#players_name' do
    it 'should display player and computer names' do
      expect(rps.players_names).to eq ["Dave", "SkyNet"]
    end
  end

  describe '#result' do
    it 'should display a result' do
      expect(rps.result).to eq 'Spock vaporizes Rock.'
    end
    it 'can result in a tie' do
      rps_tie = RPS.new(player2, computer2)
      expect(rps_tie.result).to eq "It's a tie!"
    end
  end
end



