defmodule Score do
  @moduledoc false

  def spokenScore({player1, player2})
      when player1 == player2 and player1 >= 3 do
    "deuce"
  end

  def spokenScore({player1, player2})
    when player1 == player2 do
    "#{speak(player1)} all"
  end


  def spokenScore({player1, player2})
    when player1 >=4 and player2 < player1 do
     "player 1 win"
  end

  def spokenScore({player1, player2}) do
    "#{speak(player1)} #{speak(player2)}"
  end

  defp speak(player) do
    case player do
      0 -> "love"
      1 -> "fifteen"
      2 -> "thirty"
      3 -> "forty"
    end
  end
end
