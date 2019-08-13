defmodule ScoreTest do
  use ExUnit.Case

  alias Score

  @moduletag :capture_log

  doctest Score

  test "Game with no score then return Love All" do
    assert "love all" == Score.spokenScore({0,0})
  end

  test "Game score 1 to 0 then return fifteen, love" do
    assert "fifteen love" == Score.spokenScore({15, 0})
  end
end
