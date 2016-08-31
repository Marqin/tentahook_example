defmodule TentahookExample.Mixfile do
  use Mix.Project

  def project do
    [app: :tentahook_example,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :tentahook],
     mod: {TentahookExample, []}]
  end

  defp deps do
    [{:tentahook, "~> 0.1.0"}]
  end
end
