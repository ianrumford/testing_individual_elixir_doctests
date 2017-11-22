defmodule RealModule do
  @moduledoc ~S"""
  Real Module To Demonstrate Testing Individual Doctests 
  """
  @doc ~S"""
  `add_xy/2` adds two integers together.

  ## Examples

      iex> add_xy(39, 3)
      42

  """
  def add_xy(x, y) when is_integer(x) and is_integer(y) do
    x + y
  end
end
