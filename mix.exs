defmodule Ja.MixProject do
  use Mix.Project

  def project do
    [
      app: :ja,
      version: "0.1.0",
      elixir: "~> 1.9",
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
end
