defmodule Ja do
  @moduledoc """
  Documentation for Ja.
  """

  @doc """
      iex> label = "my_file"
      "my_file"
      iex> file_descriptor = "./mix.exs"
      "./mix.exs"
      iex> Ja.add_file(label, file_descriptor)
      "stuff"
  """
  def add_file(label, file_descriptor), do: "hi"
  def add_file(jamap, label, file_descriptor) do
    "asdf"
  end
end
