require 'player'

describe Player do
  subject(:hafiz) { Player.new('Hafiz') }
  subject(:tanya) { Player.new('Tanya') }

  describe '#name' do
    it 'returns the name' do
      expect(hafiz.name).to eq 'Hafiz'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(hafiz.hit_points).to eq 100
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(tanya).to receive(:receive_damage)
      hafiz.attack(tanya)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { hafiz.receive_damage }.to change { hafiz.hit_points }.by(-20)
    end
  end
end