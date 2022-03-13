require 'player'

describe Player do
  it 'checks to see if we can create a player with a name argument' do
    player = player.new('Hal')
    expect(player.name).to eq 'Hal'
  end
end