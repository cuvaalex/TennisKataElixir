defmodule Score do
  @moduledoc false

  def spokenScore({player1, player2})
    when player1 == player2 do

    "love all"
  end

  def spokenScore({player1, player2})
    when player1 >=4 and player2 < player1 do
     "player 1 win"
  end

  def spokenScore({player1, player2}) do
    score1 = case player1 do
      1 -> "fifteen"
      2 -> "thirty"
      3 -> "forty"
    end
    "#{score1} love"
  end
end
