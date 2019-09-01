defmodule Fa.MixProject do
  use Mix.Project

  def project do
    [
      app: :fa,
      version: "0.1.0",
      elixir: "~> 1.9",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp escript do
    [
      {:stream_data, "~> 0.4.2", only: :test}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:stream_data, "~> 0.4.2", only: :test}
    ]
  end

  defp elixirc_paths(:test) do
    ["lib", "test/support"]
  end

  defp elixirc_paths(_), do: ["lib"]
end
