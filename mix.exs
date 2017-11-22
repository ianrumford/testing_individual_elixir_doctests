defmodule TestingIndividualElixirDoctests.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :testing_individual_elixir_doctests,
     version: @version,
     elixir: "~> 1.5",
     description: description(),
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     elixirc_paths: elixirc_paths(Mix.env),
     deps: deps()]
  end
  def application do
    [applications: [:logger]]
  end
  defp deps do
    [{:ex_doc, "~> 0.18", only: :dev}]
  end
  defp elixirc_paths(:test), do: ["lib", "test/lib"]
  defp elixirc_paths(_),     do: ["lib"]
  defp package do
    [maintainers: ["Ian Rumford"],
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/ianrumford/testing_individual_elixir_doctests"}]
  end
  defp description do
    ~S"""
    testing_individual_elixir_doctests: Examples for my blog post Testing Individual Elixir Doctests
    """     
  end
end
