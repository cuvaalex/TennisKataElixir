defmodule ScoreTest do
  use ExUnit.Case

  alias Score

  @moduletag :capture_log

  doctest Score

  test "Game with no score then return Love All" do
    assert "love all" == Score.spokenScore(0,0)
  end

  test "Game score 1 to 0 then return fifteen, love" do
    assert "fifteen love" == Score.spokenScore(1,0)
  end

  test "Game score 2 to 0 then return thirty, love" do
    assert "thirty love" == Score.spokenScore(2, 0)
  end

  test "Game score 3 to 0 then return forty, love" do
    assert "forty love" == Score.spokenScore(3, 0)
  end

  test "Game score 4 to 0 then return player 1 win" do
    assert "player 1 win" == Score.spokenScore(4, 0)
  end

  test "Game score 0 to 4 then return player 2 win" do
    assert "player 2 win" == Score.spokenScore(0, 4)
  end

  test "Game score 1 to 1 then return fifteen all" do
    assert "fifteen all" == Score.spokenScore(1,1)
  end

  test "Game score 2 to 2 then return thirty all" do
    assert "thirty all" == Score.spokenScore(2,2)
  end

  test "Game score 3 to 3 then return deuce" do
    assert "deuce" == Score.spokenScore(3,3)
  end

  test "Game score 0 to 1 then return love fifteen" do
    assert "love fifteen" == Score.spokenScore(0,1)
  end

  test "Game score 4 to 3 then return player 1 advantage" do
    assert "player 1 advantage" == Score.spokenScore(4,3)
  end

  test "Game score 3 to 4 then return player 2 advantage" do
    assert "player 2 advantage" == Score.spokenScore(3,4)
  end

end
