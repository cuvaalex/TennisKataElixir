defmodule Score do
  @moduledoc false

  import Winner

  def spokenScore(player1, player2)
    when player1 == player2 do
      speak(player1, player2, :equal)
  end

  def spokenScore(player1, player2) do
    speak(player1, player2, :notequal)
  end

  def speak(player1, _, :equal)
      when player1 >= 3 do
    "deuce"
  end

  def speak(player1, _, :equal) do
    "#{speakScore(player1)} all"
  end

  def speak(player1, player2, :notequal)
    when player1Win?(player1, player2) do
     "player 1 win"
  end

  def speak(player1, player2, :notequal)
      when player2Win?(player1, player2) do
    "player 2 win"
  end

  def speak(player1, player2, :notequal)
    when (player1 >= 4 and player1 > player2) do
    "player 1 advantage"
  end

  def speak(player1, player2, :notequal) do
    "#{speakScore(player1)} #{speakScore(player2)}"
  end

  defp speakScore(player) do
    case player do
      0 -> "love"
      1 -> "fifteen"
      2 -> "thirty"
      3 -> "forty"
    end
  end

end
