defmodule ScoreTest do
  use ExUnit.Case

  alias Score

  @moduletag :capture_log

  doctest Score

  test "Game with no score then return Love All" do
    assert "love all" == Score.spokenScore({0,0})
  end

end
