class Game

  def initialize(options)
  end

  def check_who_wins(hand1, hand2)

    win = {
      "rock" => "scissors",
      "paper" => "rock",
      "scissors" => "paper"
    }

    if hand1 == hand2
      "Try again"
    elsif win[hand1] == hand2
      "Player 1 wins with #{hand1}"
    else win[hand2] == hand1
      "Player 2 wins with #{hand2}"
    end
  end

end
