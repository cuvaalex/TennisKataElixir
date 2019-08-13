defmodule Score do
  @moduledoc false

  def spokenScore({player1, player2})
    when player1 == player2 do

    "love all"
  end

  def spokenScore({player1, player2}) do
    "fifteen love"
  end
end
