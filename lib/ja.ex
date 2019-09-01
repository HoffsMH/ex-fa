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
      %JaMap{files: []}
  """
  def add_file(label, file_descriptor),
    do: add_file(%JaMap{}, label, file_descriptor)

  @doc """
      iex> label = "my_file"
      "my_file"
      iex> file_descriptor = "./mix.exs"
      "./mix.exs"
      iex> jaMap = %JaMap{}
      iex> Ja.add_file(jaMap, label, file_descriptor)
      %JaMap{files: []}
  """
  def add_file(jamap, label, file_descriptor) do
    jamap
  end
end
