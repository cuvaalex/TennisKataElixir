defmodule Score do
  @moduledoc false

  def spokenScore({player1, player2})
    when player1 == player2 do

    "love all"
  end

  def spokenScore({player1, player2}) do
    score1 = case player1 do
      15 -> "fifteen"
      30 -> "thirty"
      40 -> "forty"
    end
    "#{score1} love"
  end
end
