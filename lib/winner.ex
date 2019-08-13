defmodule Winner do
  @moduledoc false

  defmacro player1Win?(player1, player2) do
    quote do:
      unquote(player1) >= 4 and (unquote(player1) - unquote(player2)) > 1
  end

  defmacro player2Win?(player1, player2) do
    quote do:
            unquote(player2) >= 4 and (unquote(player2) - unquote(player1)) > 1
  end

end
