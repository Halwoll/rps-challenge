class Game
  attr_reader :player :answers

  def initialize(player)
    @player = player
    @answers = ['rock', 'paper', 'scissors']
  end

  def computer_answer
    @answers.sample
  end

  def result
    if (player == 'rock' && computer_answer == 'scissors') || (player == 'paper' && computer_answer == 'rock')
      puts 'You win!'
    elsif player == 'scissors' && computer_answer == 'paper'
      puts 'You win!'
    elsif (player == "rock" && computer_answer == "paper") || (player == "paper" && computer_answer == "scissors")
      puts "You lose!"
    elsif player == "scissors" && computer_answer == "rock"
      puts "You lose!"
    else
      puts "It's a draw"
    end
  end
end