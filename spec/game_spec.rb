require 'game'
require 'player'

describe Game do
  
  #deals with creating a new game
  it 'creates a game with player' do
    expect(game.player.name).to eq 'Hal'
  end

  #deals with computer returning result
  it 'creates an rps answer' do
    allow(game).to receive(:computer_answer).and_return('rock')
    expect(game.computer_answer).to eq 'rock'
  end

  #deals with win/loss scenario
  it 'returns win/draw/loss message depending on result' do
    allow(game).to receive(:computer_answer).and_return('rock')
    expect(game.computer_answer('scissors',game.computer_answer)).to eq 'You lose!'
  end

end