defmodule FakeModule do

  @moduledoc ~S"""
  Fake Module To Demonstrate Testing Individual Doctests 
  """

  # these vars will be used for args in the defdelegates below
  @args_vars 5 |> Macro.generate_arguments(__MODULE__)
  # get the names and arities of the real module's function
  @funs :functions |> RealModule.__info__
  # use unquote fragments to delegate to the real's module functions
  for {name,arity} <- @funs do
    defdelegate unquote(name)(unquote_splicing(Enum.take(@args_vars, arity))), to: RealModule
  end

  @doc ~S"""
  I can add tests here one by one and see how the code behaves

      iex> add_xy(-3, 45)
      42

      iex> add_xy(-7, -35)
      42

  """
  def here_to_satisfy_mix do
    nil
  end
end
